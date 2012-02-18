# encoding: utf-8

require 'spec_helper'

describe "Viljushka::Boc" do

  context "#to_cyr!" do
    it "should change the original string" do
      string = 'Milisav'
      string.to_cyr!.should == 'Милисав'
      string.should == 'Милисав'
    end
  end


  context "#to_cyr" do
    it "should not change the original string" do
      string = 'Darinka'
      string.to_cyr.should == 'Даринка'
      string.should == 'Darinka'
    end
  end

  context "Вук Караџић" do
    context "when using #po_vuku!" do
      it "should change the original string" do
        string = 'Debelo jer'
        string.to_cyr!.should == 'Дебело јер'
        string.should == 'Дебело јер'
      end
    end

    context "when using #po_vuku" do
      it "should not change the original string" do
        string = 'Debelo jer'
        string.to_cyr.should == 'Дебело јер'
        string.should == 'Debelo jer'
      end
    end
  end

  context "#to_lat!" do
    it "should change the original string" do
      string = 'Руменка'
      string.to_lat!.should == 'Rumenka'
      string.should == 'Rumenka'
    end
  end

  context "#to_lat" do
    it "should not change the original string" do
      string = 'Изворка'
      string.to_lat.should == 'Izvorka'
      string.should == 'Изворка'
    end
  end

  context "Ljudevit Gaj" do
    context "#po_gaju!" do
      it "should change the original string" do
        string = 'дивно'
        string.po_gaju!.should == 'divno'
        string.should == 'divno'
      end
    end

    context "#po_gaju" do
      it "should not change the original string" do
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
