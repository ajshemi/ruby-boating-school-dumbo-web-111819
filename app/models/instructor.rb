class Instructor
    attr_reader :name
    @@all=[]

    def initialize(name)
        @name=name
        @@all << self
    end

    def pass_student(student,test_name)
        test_exist=BoatingTest.all.find {|test_instance| (test_instance.student==student && test_instance.test_name==test_name)}
        if test_exist
            test_exist.test_status="passed"
            test_exist
        else
            BoatingTest.new(student,test_name,"passed",self)
        end
    end

    def fail_student(student,test_name)
        test_exist=BoatingTest.all.find {|test_instance| (test_instance.student==student && test_instance.test_name==test_name)}
        if test_exist
            test_exist.test_status="failed"
            test_exist
        else
            BoatingTest.new(student,test_name,"failed",self)
        end
    end

    def self.all
        @@all
    end

end
