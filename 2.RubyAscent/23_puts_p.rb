def describe(user_info)
  "My name is #{user_info[0]} and I'm #{user_info[1]} years old."
end

p 10 / 2
p 10 / 3
p 10.to_f / 3

class VisualAcuity
  def initialize(subject, normal)
    @subject = subject
    @normal = normal
  end

  def can_drive?
    (@subject / @normal) >= 0.5
  end
end

class DrivingLicenseAuthority
  def initialize(name, age, visual_acuity)
    @name = name
    @visual_acuity = visual_acuity
  end

  def valid_for_license?
    @age >= 18
  end

  def verdict
    if valid_for_license?
      "#{@name} can be granted driving license"
    else
      "#{@name} cannot be granted driving license"
    end
  end
end
