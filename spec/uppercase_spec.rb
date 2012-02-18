# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Viljushka::Upcase" do

  context "with alphabet" do
    subject { "abcdefghijklmnopqrstuvwxyz".upcase }
    it { should eql "ABCDEFGHIJKLMNOPQRSTUVWXYZ" }
  end

  context "with Serbian Cyrillic" do
    subject { "абвгдђежзијклљмнњопрстћуфхцчџш".upcase }
    it { should eql "АБВГДЂЕЖЗИЈКЛЉМНЊОПРСТЋУФХЦЧЏШ" }
  end

end
