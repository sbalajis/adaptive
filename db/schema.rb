# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140102032345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.integer  "user_id"
    t.integer  "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "survey"
  end

  create_table "article_phrases", force: true do |t|
    t.integer  "article_id"
    t.integer  "important_phrase_id"
    t.integer  "sentence"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "start_position"
    t.integer  "end_position"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.integer  "author_id"
    t.integer  "company_id"
    t.integer  "source_id"
    t.integer  "timeframe_id"
    t.text     "html"
    t.text     "content"
    t.text     "sentences"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.date     "article_date"
    t.string   "comments"
    t.string   "author"
    t.string   "ticker"
    t.text     "topics"
    t.text     "topics_lda"
  end

  create_table "articles_topics", force: true do |t|
    t.integer  "article_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: true do |t|
    t.string   "name"
    t.integer  "rank"
    t.boolean  "active"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "balance_sheets", force: true do |t|
    t.integer  "company_id"
    t.string   "as_of_date"
    t.date     "report_date"
    t.string   "fiscal_quarter"
    t.string   "report_type"
    t.string   "auditors_name"
    t.string   "auditors_report"
    t.string   "domestic_sales"
    t.string   "foreign_sales"
    t.string   "cash_and_equivalents"
    t.string   "restricted_cash"
    t.string   "marketable_securities"
    t.string   "accounts_receivable"
    t.string   "loans_receivable"
    t.string   "other_receivable"
    t.string   "receivables"
    t.string   "raw_materials"
    t.string   "work_in_progess"
    t.string   "purchased_components"
    t.string   "finished_goods"
    t.string   "other_inventories"
    t.string   "inventories_adjustments_and_allowances"
    t.string   "inventories"
    t.string   "prepaid_expenses"
    t.string   "current_deferred_income_taxes"
    t.string   "other_current_assets"
    t.string   "total_current_assets"
    t.string   "land_and_improvements"
    t.string   "building_and_improvements"
    t.string   "machinery_furniture_and_equiptment"
    t.string   "construction_in_progress"
    t.string   "other_fixed_assets"
    t.string   "total_fixed_assets"
    t.string   "gross_fixed_assets"
    t.string   "accumulated_depreciation_and_depletion"
    t.string   "net_fixed_assets"
    t.string   "intangibles"
    t.string   "cost_in_excess"
    t.string   "non_current_deferred_income_taxes"
    t.string   "other_non_current_assets"
    t.string   "total_non_current_assets"
    t.string   "total_assets"
    t.string   "accounts_payable"
    t.string   "notes_payable"
    t.string   "short_term_debt"
    t.string   "accrued_expenses"
    t.string   "accrued_liabilities"
    t.string   "deferred_revenue"
    t.string   "current_deferred_income_tax_liabilities"
    t.string   "other_current_liabilities"
    t.string   "total_current_liabilities"
    t.string   "long_term_debt"
    t.string   "capital_lease_obligations"
    t.string   "deferred_income_tax_liabilities"
    t.string   "other_non_current_liabilities"
    t.string   "minority_interest_liabilities"
    t.string   "preferred_securities_of_subsidiary_trust_liabilities"
    t.string   "preferred_equity_outside_stock_equity"
    t.string   "total_non_current_liabilities"
    t.string   "total_liabilities"
    t.string   "preferred_stock_equity"
    t.string   "common_stock_equity"
    t.string   "common_par"
    t.string   "additional_paid_in_capital"
    t.string   "cumulative_translation_adjustment"
    t.string   "retained_earnings"
    t.string   "treasury_stock"
    t.string   "other_equity_adjustments"
    t.string   "total_capitalization"
    t.string   "total_equity"
    t.string   "total_liabilities_and_stock_equity"
    t.string   "cash_flow"
    t.string   "working_capital"
    t.string   "free_cash_flow"
    t.string   "invested_capital"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shares_outstanding"
  end

  create_table "cashflows", force: true do |t|
    t.integer  "company_id"
    t.integer  "shares_outstanding"
    t.string   "as_of_date"
    t.date     "report_date"
    t.string   "fiscal_quarter"
    t.string   "report_type"
    t.string   "auditors_name"
    t.string   "auditors_report"
    t.string   "cash_at_beginning_of_period"
    t.string   "net_income_or_loss"
    t.string   "depreciation_expenses"
    t.string   "amortization_expenses"
    t.string   "amortization_of_intangibles_expenses"
    t.string   "deferred_income_taxes"
    t.string   "operating_gains_or_losses"
    t.string   "extraordinary_gains_or_losses"
    t.string   "increase_or_decrease_in_receivables"
    t.string   "increase_or_decrease_in_inventories"
    t.string   "increase_or_decrease_in_prepaid_expenses"
    t.string   "increase_or_decrease_in_other_current_assets"
    t.string   "increase_or_decrease_in_payables"
    t.string   "increase_or_decrease_in_other_current_liabilities"
    t.string   "increase_or_decrease_in_other_working_capital"
    t.string   "other_non_cash_items"
    t.string   "net_cash_from_continuing_operations"
    t.string   "net_cash_from_discontinued_operations"
    t.string   "net_cash_from_operating_activities"
    t.string   "sale_of_property_plant_and_equipment"
    t.string   "sale_of_long_term_investments"
    t.string   "sale_of_short_term_investments"
    t.string   "purchase_of_property_plant_and_equipment"
    t.string   "acquisitions"
    t.string   "purchase_of_long_term_investments"
    t.string   "purchase_of_short_term_investments"
    t.string   "other_investing_changes_net"
    t.string   "cash_from_discontinued_investing_activities"
    t.string   "net_cash_from_investing_activities"
    t.string   "issuance_of_debt"
    t.string   "issuance_of_capital_stock"
    t.string   "repayment_of_debt"
    t.string   "repurchase_of_capital_stock"
    t.string   "payment_of_cash_dividends"
    t.string   "net_other_financing_charges"
    t.string   "cash_from_discontinued_financing_activities"
    t.string   "net_cash_from_financing_activities"
    t.string   "net_change_in_cash_and_cash_equivalents"
    t.string   "cash_at_end_of_period"
    t.string   "effect_of_exchange_rate_changes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "ticker"
    t.integer  "timeframe_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "scrape"
    t.boolean  "active",                  default: true
    t.string   "refresh_data", limit: 50, default: "N",  null: false
  end

  create_table "events", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.datetime "event_date"
    t.text     "description"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "important_phrases", force: true do |t|
    t.integer  "phrase_type_id"
    t.string   "phrase"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "income_statements", force: true do |t|
    t.integer  "company_id"
    t.string   "as_of_date"
    t.date     "report_date"
    t.string   "fiscal_quarter"
    t.string   "report_type"
    t.string   "auditor_name"
    t.string   "auditors_report"
    t.string   "total_revenue"
    t.string   "gross_margin"
    t.string   "research_and_development_expenses"
    t.string   "selling_general_and_administrative_expenses"
    t.string   "advertising_expenses"
    t.string   "operating_income_before_depreciation"
    t.string   "operating_income"
    t.string   "depreciation"
    t.string   "depreciation_unreconciled"
    t.string   "amortization"
    t.string   "amortization_of_intangibles"
    t.string   "operating_income_after_depreciation"
    t.string   "interest_expense"
    t.string   "pre_tax_income"
    t.string   "income_taxes"
    t.string   "minority_interest"
    t.string   "income_before_income_taxes"
    t.string   "net_income_from_continuing_operations"
    t.string   "net_income_from_discontinued_operations"
    t.string   "net_income_from_total_operations"
    t.string   "extraordinary_income_losses"
    t.string   "income_from_cumulated_effect_of_accounting_changes"
    t.string   "income_from_tax_loss_carryforward"
    t.string   "other_gains_and_losses"
    t.string   "total_net_income"
    t.string   "net_income_or_loss"
    t.string   "normalized_income"
    t.string   "net_income_available_for_common"
    t.string   "preferred_dividends"
    t.string   "excise_taxes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phrase_types", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "keyboard_key"
  end

  create_table "preferences", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.integer  "company_id"
    t.date     "price_date"
    t.float    "open"
    t.float    "high"
    t.float    "low"
    t.float    "close"
    t.integer  "volume"
    t.float    "adj_close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "minimum"
    t.string   "maximum"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "sources", force: true do |t|
    t.integer  "article_id"
    t.string   "name"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeframes", force: true do |t|
    t.string   "name"
    t.datetime "start"
    t.integer  "months"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_rules", force: true do |t|
    t.string   "name"
    t.integer  "topic_id"
    t.string   "rule"
    t.boolean  "active"
    t.integer  "matches"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sentences", force: true do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.integer  "sentence_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "name"
    t.boolean  "allow_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
