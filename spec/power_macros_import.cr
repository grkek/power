require "./spec_helper"

describe Power::Macros::Import do
  describe "Import using the `as` keyword" do
    ImportAs.new
  end

  describe "Import using the default `import` macro" do
    Import.new
  end
end
