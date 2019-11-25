class Student
    attr_reader :first_name
    @@all=[]

    def initialize(first_name)
        @first_name=first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(first_name)
        Student.all.find {|student| student.first_name}
    end

    def grade_percentage
        aStudent=BoatingTest.all.select {|student_test| student_test.student==self}
        pass_count=aStudent.count {|student_test| student_test.test_status=="passed"}
        #pass_count
        #aStudent.count
        (pass_count.to_f/aStudent.count)*100
    end

end
