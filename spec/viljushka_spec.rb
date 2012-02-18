# encoding: utf-8

require 'spec_helper'

describe "Viljushka::Boc" do

  it "should change original string when using to_cyr!" do
    string = 'Milisav'
    string.to_cyr!.should == 'Милисав'
    string.should == 'Милисав'
  end


  it "should not change original string when using to_cyr" do
    string = 'Darinka'
    string.to_cyr.should == 'Даринка'
    string.should == 'Darinka'
  end

  context "Вук Караџић" do
    context "when using 'po_vuku!'" do
      it "should change original string" do
        string = 'Debelo jer'
        string.to_cyr!.should == 'Дебело јер'
        string.should == 'Дебело јер'
      end
    end

    context "when using 'po_vuku'" do
      it "should not change original string" do
        string = 'Debelo jer'
        string.to_cyr.should == 'Дебело јер'
        string.should == 'Debelo jer'
      end
    end
  end

  it "should change original string when using to_lat!" do
    string = 'Руменка'
    string.to_lat!.should == 'Rumenka'
    string.should == 'Rumenka'
  end

  it "should not change original string when using to_lat" do
    string = 'Изворка'
    string.to_lat.should == 'Izvorka'
    string.should == 'Изворка'
  end

  context "Ljudevit Gaj" do
    context "when using 'po_gaju!'" do
      it "should change original string" do
        string = 'дивно'
        string.po_gaju!.should == 'divno'
        string.should == 'divno'
      end
    end

    context "when using 'po_gaju'" do
      it "should not change original string" do
        string = 'дивно'
        string.po_gaju.should == 'divno'
        string.should == 'дивно'
      end
    end
  end

  it "should convert Serbian characters" do
    "čiča".to_cyr.should == 'чича'
  end

end
