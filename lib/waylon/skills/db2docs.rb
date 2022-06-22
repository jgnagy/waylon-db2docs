# frozen_string_literal: true

module Waylon
  module Skills
    # Lets Waylon lookup Db2 docs from IBM's site(s)
    class Db2docs < Waylon::Skill
      IBM_DB2_ERROR_CODE_RANGES_URL = "https://www.ibm.com/docs/en/db2/11.5?topic=messages-sql"
      IBM_DB2_ERROR_DOC_BASE = "https://www.ibm.com/docs/en/SSEPGG_11.5.0/com.ibm.db2.luw.messages.sql.doc"

      route(
        /sql([0-9]{4,})([a-z])/i,
        :lookup_db2_error_message,
        help: {
          usage: "SQL1234N",
          description: "Mention a Db2 Error Code and Waylon will tell you about it"
        },
        mention_only: false
      )

      def lookup_db2_error_message
        error_number = tokens.first
        error_letter = tokens.last.downcase

        range = db2_error_code_ranges.find { |_name, r| r.include?(error_number.to_i) }

        if range
          threaded_reply(
            "Hey, that looks like an IBM Db2 SQL Error code! This link that might be of interest: " \
            "#{IBM_DB2_ERROR_DOC_BASE}/#{range.first.downcase.gsub(/\s/, "")}.html#sql#{error_number}#{error_letter}"
          )
        else
          threaded_reply("I'm having trouble finding that SQL error code on IBM's site")
        end
      end

      def db2_error_code_ranges
        cache("db2_error_code_ranges", expires: 86_400) do
          conn = Faraday.new
          response = conn.get(IBM_DB2_ERROR_CODE_RANGES_URL)
          raw_ranges = response.body.scan(/SQL[0-9]+\s-\sSQL[0-9]+/)
          break [] if raw_ranges.empty?

          raw_ranges.to_h { |r| [r, Range.new(*r.gsub("SQL", "").split(" - ").map(&:to_i))] }
        end
      end
    end
  end
end
