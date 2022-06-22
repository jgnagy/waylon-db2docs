# frozen_string_literal: true

RSpec.describe Waylon::Skills::Db2docs do
  it { is_expected.to route("I saw a SQL1234N").to(:lookup_db2_error_message) }
  it "looks up Db2 error codes" do
    send_message("I saw a SQL1234N")
    expect(replies.last).to be_a(String)
    expect(replies.last).to end_with(
      "https://www.ibm.com/docs/en/SSEPGG_11.5.0/com.ibm.db2.luw.messages.sql.doc/sql1000-sql1249.html#sql1234n"
    )
  end
end
