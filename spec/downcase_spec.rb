# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Viljushka::Downcase" do

  context "with alphabet" do
    subject { "ABCDEFGHIJKLMNOPQRSTUVWXYZ".downcase }
    it { should eql "abcdefghijklmnopqrstuvwxyz" }
  end

  context "with Serbian Cyrillic" do
    subject { "АБВГДЂЕЖЗИЈКЛЉМНЊОПРСТЋУФХЦЧЏШ".downcase }
    it { should eql "абвгдђежзијклљмнњопрстћуфхцчџш" }
  end

end
