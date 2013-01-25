module RiCal
  module Properties #:nodoc:
    #- ©2009 Rick DeNatale
    #- All rights reserved. Refer to the file README.txt for the license
    #
    # Properties::TimezonePeriod provides property accessing methods for the TimezonePeriod class
    # This source file is generated by the  rical:gen_propmodules rake tasks, DO NOT EDIT
    module TimezonePeriod

      # return the the DTSTART property
      # which will be an instances of either RiCal::PropertyValue::DateTime or RiCal::PropertyValue::Date
      # 
      # [purpose (from RFC 2445)]
      # This property specifies when the calendar component begins.
      # 
      # see RFC 2445 4.8.2.4 pp 93-94
      def dtstart_property
        @dtstart_property
      end

      # set the DTSTART property
      # property value should be an instance of either RiCal::PropertyValue::DateTime or RiCal::PropertyValue::Date
      def dtstart_property=(property_value)
        @dtstart_property = property_value ? property_value.for_parent(self) : nil
      end

      # set the value of the DTSTART property
      def dtstart=(ruby_value)
        self.dtstart_property= RiCal::PropertyValue::DateTime.convert(self, ruby_value)
      end

      # return the value of the DTSTART property
      # which will be an instance of either DateTime or Date
      def dtstart
        dtstart_property ? dtstart_property.ruby_value : nil
      end

      def dtstart_property_from_string(line) # :nodoc:
        @dtstart_property = RiCal::PropertyValue::DateTime.or_date(self, line)
      end


      # return the the TZOFFSETTO property
      # which will be an instances of RiCal::PropertyValueUtcOffset
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the offset which is in use in this time zone observance
      # 
      # see RFC 2445 4.8.3.4 pp 100-101
      def tzoffsetto_property
        @tzoffsetto_property
      end

      # set the TZOFFSETTO property
      # property value should be an instance of RiCal::PropertyValueUtcOffset
      def tzoffsetto_property=(property_value)
        @tzoffsetto_property = property_value
      end

      # set the value of the TZOFFSETTO property
      def tzoffsetto=(ruby_value)
        self.tzoffsetto_property= RiCal::PropertyValue::UtcOffset.convert(self, ruby_value)
      end

      # return the value of the TZOFFSETTO property
      # which will be an instance of UtcOffset
      def tzoffsetto
        tzoffsetto_property ? tzoffsetto_property.ruby_value : nil
      end

      def tzoffsetto_property_from_string(line) # :nodoc:
        @tzoffsetto_property = RiCal::PropertyValue::UtcOffset.new(self, line)
      end


      # return the the TZOFFSETFROM property
      # which will be an instances of RiCal::PropertyValueUtcOffset
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the offset which is in use prior to this time zone observance
      # 
      # see RFC 2445 4.8.3.3 pp 99-100
      def tzoffsetfrom_property
        @tzoffsetfrom_property
      end

      # set the TZOFFSETFROM property
      # property value should be an instance of RiCal::PropertyValueUtcOffset
      def tzoffsetfrom_property=(property_value)
        @tzoffsetfrom_property = property_value
      end

      # set the value of the TZOFFSETFROM property
      def tzoffsetfrom=(ruby_value)
        self.tzoffsetfrom_property= RiCal::PropertyValue::UtcOffset.convert(self, ruby_value)
      end

      # return the value of the TZOFFSETFROM property
      # which will be an instance of UtcOffset
      def tzoffsetfrom
        tzoffsetfrom_property ? tzoffsetfrom_property.ruby_value : nil
      end

      def tzoffsetfrom_property_from_string(line) # :nodoc:
        @tzoffsetfrom_property = RiCal::PropertyValue::UtcOffset.new(self, line)
      end


      # return the the COMMENT property
      # which will be an array of instances of RiCal::PropertyValueText
      # 
      # [purpose (from RFC 2445)]
      # This property specifies non-processing information intended to provide a comment to the calendar user.
      # 
      # see RFC 2445 4.8.1.4 pp 80-81
      def comment_property
        @comment_property ||= []
      end

      # set the the COMMENT property
      # one or more instances of RiCal::PropertyValueText may be passed to this method
      def comment_property=(*property_values)
        @comment_property= property_values
      end

      # set the value of the COMMENT property to multiple values
      # one or more instances of String may be passed to this method
      def comments=(ruby_values)
        @comment_property = ruby_values.map {|val| RiCal::PropertyValue::Text.convert(self, val)}
      end

      # set the value of the COMMENT property to a single value
      # one instance of String may be passed to this method
      def comment=(ruby_value)
        @comment_property = [RiCal::PropertyValue::Text.convert(self, ruby_value)]
      end

      # add one or more values to the COMMENT property
      # one or more instances of String may be passed to this method
      def  add_comments(*ruby_values)
       ruby_values.each {|val|  self.comment_property << RiCal::PropertyValue::Text.convert(self, val)}
      end

      # add one value to the COMMENT property
      # one instances of String may be passed to this method
      def  add_comment(ruby_value)
       self.comment_property << RiCal::PropertyValue::Text.convert(self, ruby_value)
      end

      # remove one or more values from the COMMENT property
      # one or more instances of String may be passed to this method
      def  remove_comments(*ruby_values)
       ruby_values.each {|val|  self.comment_property.delete(RiCal::PropertyValue::Text.convert(self, val))}
      end

      # remove one value from the COMMENT property
      # one instances of String may be passed to this method
      def  remove_comment(ruby_value)
       self.comment_property.delete(RiCal::PropertyValue::Text.convert(self, ruby_value))
      end

      # return the value of the COMMENT property
      # which will be an array of instances of String
      def comment
        comment_property.map {|prop| prop ? prop.ruby_value : prop}
      end

      def comment_property_from_string(line) # :nodoc:
        comment_property << RiCal::PropertyValue::Text.new(self, line)
      end

      # return the the RDATE property
      # which will be an array of instances of RiCal::PropertyValueOccurrenceList
      # 
      # [purpose (from RFC 2445)]
      # This property defines the list of date/times for a recurring calendar component.
      # 
      # see RFC 2445 4.8.5.3 pp 115-117
      def rdate_property
        @rdate_property ||= []
      end

      # set the the RDATE property
      # one or more instances of RiCal::PropertyValueOccurrenceList may be passed to this method
      def rdate_property=(*property_values)
        @rdate_property= property_values.map{|prop| prop.for_parent(self)}
      end

      # set the value of the RDATE property to multiple values
      # one or more instances of OccurrenceList may be passed to this method
      def rdates=(ruby_values)
        @rdate_property = ruby_values.map {|val| RiCal::PropertyValue::OccurrenceList.convert(self, *val)}
      end

      # set the value of the RDATE property to a single value
      # one instance of OccurrenceList may be passed to this method
      def rdate=(*ruby_value)
        @rdate_property = [RiCal::PropertyValue::OccurrenceList.convert(self, *ruby_value)]
      end

      # add one or more values to the RDATE property
      # one or more instances of OccurrenceList may be passed to this method
      def  add_rdates(*ruby_values)
       ruby_values.each {|val|  self.rdate_property << RiCal::PropertyValue::OccurrenceList.convert(self, *val)}
      end

      # add one value to the RDATE property
      # one instances of OccurrenceList may be passed to this method
      def  add_rdate(*ruby_value)
       self.rdate_property << RiCal::PropertyValue::OccurrenceList.convert(self, *ruby_value)
      end

      # remove one or more values from the RDATE property
      # one or more instances of OccurrenceList may be passed to this method
      def  remove_rdates(*ruby_values)
       ruby_values.each {|val|  self.rdate_property.delete(RiCal::PropertyValue::OccurrenceList.convert(self, *val))}
      end

      # remove one value from the RDATE property
      # one instances of OccurrenceList may be passed to this method
      def  remove_rdate(*ruby_value)
       self.rdate_property.delete(RiCal::PropertyValue::OccurrenceList.convert(self, *ruby_value))
      end

      # return the value of the RDATE property
      # which will be an array of instances of OccurrenceList
      def rdate
        rdate_property.map {|prop| prop ? prop.ruby_value : prop}
      end

      def rdate_property_from_string(line) # :nodoc:
        rdate_property << RiCal::PropertyValue::OccurrenceList.new(self, line)
      end

      # return the the RRULE property
      # which will be an array of instances of RiCal::PropertyValueRecurrenceRule
      # 
      # [purpose (from RFC 2445)]
      # This property defines a rule or repeating pattern for recurring events, to-dos, or time zone definitions.
      # 
      # see RFC 2445 4.8.5.4 pp 117-125
      def rrule_property
        @rrule_property ||= []
      end

      # set the the RRULE property
      # one or more instances of RiCal::PropertyValueRecurrenceRule may be passed to this method
      def rrule_property=(*property_values)
        @rrule_property= property_values
      end

      # set the value of the RRULE property to multiple values
      # one or more instances of RecurrenceRule may be passed to this method
      def rrules=(ruby_values)
        @rrule_property = ruby_values.map {|val| RiCal::PropertyValue::RecurrenceRule.convert(self, val)}
      end

      # set the value of the RRULE property to a single value
      # one instance of RecurrenceRule may be passed to this method
      def rrule=(ruby_value)
        @rrule_property = [RiCal::PropertyValue::RecurrenceRule.convert(self, ruby_value)]
      end

      # add one or more values to the RRULE property
      # one or more instances of RecurrenceRule may be passed to this method
      def  add_rrules(*ruby_values)
       ruby_values.each {|val|  self.rrule_property << RiCal::PropertyValue::RecurrenceRule.convert(self, val)}
      end

      # add one value to the RRULE property
      # one instances of RecurrenceRule may be passed to this method
      def  add_rrule(ruby_value)
       self.rrule_property << RiCal::PropertyValue::RecurrenceRule.convert(self, ruby_value)
      end

      # remove one or more values from the RRULE property
      # one or more instances of RecurrenceRule may be passed to this method
      def  remove_rrules(*ruby_values)
       ruby_values.each {|val|  self.rrule_property.delete(RiCal::PropertyValue::RecurrenceRule.convert(self, val))}
      end

      # remove one value from the RRULE property
      # one instances of RecurrenceRule may be passed to this method
      def  remove_rrule(ruby_value)
       self.rrule_property.delete(RiCal::PropertyValue::RecurrenceRule.convert(self, ruby_value))
      end

      # return the value of the RRULE property
      # which will be an array of instances of RecurrenceRule
      def rrule
        rrule_property.map {|prop| prop ? prop.ruby_value : prop}
      end

      def rrule_property_from_string(line) # :nodoc:
        rrule_property << RiCal::PropertyValue::RecurrenceRule.new(self, line)
      end

      # return the the TZNAME property
      # which will be an array of instances of RiCal::PropertyValueText
      # 
      # [purpose (from RFC 2445)]
      # This property specifies the customary designation for a time zone description.
      # 
      # see RFC 2445 4.8.3.2 p 99
      def tzname_property
        @tzname_property ||= []
      end

      # set the the TZNAME property
      # one or more instances of RiCal::PropertyValueText may be passed to this method
      def tzname_property=(*property_values)
        @tzname_property= property_values
      end

      # set the value of the TZNAME property to multiple values
      # one or more instances of String may be passed to this method
      def tznames=(ruby_values)
        @tzname_property = ruby_values.map {|val| RiCal::PropertyValue::Text.convert(self, val)}
      end

      # set the value of the TZNAME property to a single value
      # one instance of String may be passed to this method
      def tzname=(ruby_value)
        @tzname_property = [RiCal::PropertyValue::Text.convert(self, ruby_value)]
      end

      # add one or more values to the TZNAME property
      # one or more instances of String may be passed to this method
      def  add_tznames(*ruby_values)
       ruby_values.each {|val|  self.tzname_property << RiCal::PropertyValue::Text.convert(self, val)}
      end

      # add one value to the TZNAME property
      # one instances of String may be passed to this method
      def  add_tzname(ruby_value)
       self.tzname_property << RiCal::PropertyValue::Text.convert(self, ruby_value)
      end

      # remove one or more values from the TZNAME property
      # one or more instances of String may be passed to this method
      def  remove_tznames(*ruby_values)
       ruby_values.each {|val|  self.tzname_property.delete(RiCal::PropertyValue::Text.convert(self, val))}
      end

      # remove one value from the TZNAME property
      # one instances of String may be passed to this method
      def  remove_tzname(ruby_value)
       self.tzname_property.delete(RiCal::PropertyValue::Text.convert(self, ruby_value))
      end

      # return the value of the TZNAME property
      # which will be an array of instances of String
      def tzname
        tzname_property.map {|prop| prop ? prop.ruby_value : prop}
      end

      def tzname_property_from_string(line) # :nodoc:
        tzname_property << RiCal::PropertyValue::Text.new(self, line)
      end

      def export_properties_to(export_stream) #:nodoc:
        export_prop_to(export_stream, "RDATE", @rdate_property)
        export_prop_to(export_stream, "TZOFFSETTO", @tzoffsetto_property)
        export_prop_to(export_stream, "DTSTART", @dtstart_property)
        export_prop_to(export_stream, "TZNAME", @tzname_property)
        export_prop_to(export_stream, "TZOFFSETFROM", @tzoffsetfrom_property)
        export_prop_to(export_stream, "RRULE", @rrule_property)
        export_prop_to(export_stream, "COMMENT", @comment_property)
      end

      def ==(o) #:nodoc:
        if o.class == self.class
        (rdate_property == o.rdate_property) &&
        (tzoffsetto_property == o.tzoffsetto_property) &&
        (dtstart_property == o.dtstart_property) &&
        (tzname_property == o.tzname_property) &&
        (tzoffsetfrom_property == o.tzoffsetfrom_property) &&
        (rrule_property == o.rrule_property) &&
        (comment_property == o.comment_property)
        else
           super
        end
      end

      def initialize_copy(o) #:nodoc:
        super
        rdate_property = rdate_property && rdate_property.dup
        tzoffsetto_property = tzoffsetto_property && tzoffsetto_property.dup
        dtstart_property = dtstart_property && dtstart_property.dup
        tzname_property = tzname_property && tzname_property.dup
        tzoffsetfrom_property = tzoffsetfrom_property && tzoffsetfrom_property.dup
        rrule_property = rrule_property && rrule_property.dup
        comment_property = comment_property && comment_property.dup
      end

      def add_date_times_to(required_timezones) #:nodoc:
        add_property_date_times_to(required_timezones, dtstart_property)
        add_property_date_times_to(required_timezones, rdate_property)
      end

      module ClassMethods #:nodoc:
        def property_parser #:nodoc:
          {"RDATE"=>:rdate_property_from_string, "COMMENT"=>:comment_property_from_string, "RRULE"=>:rrule_property_from_string, "TZOFFSETFROM"=>:tzoffsetfrom_property_from_string, "TZNAME"=>:tzname_property_from_string, "TZOFFSETTO"=>:tzoffsetto_property_from_string, "DTSTART"=>:dtstart_property_from_string}
        end
      end

      def self.included(mod) #:nodoc:
        mod.extend ClassMethods
      end

      def mutual_exclusion_violation #:nodoc:
        false
      end
    end
  end
end
