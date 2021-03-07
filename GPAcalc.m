%% MATLAB GPA calculator
%% author @jigmetoby

CreditTotal = input('Total Credits Earned: ');
NumClasses = input('Total Number of Classes: ');

CreditSum = 0;

while CreditSum ~= CreditTotal
    for i = 1:NumClasses
        Course = input('Enter course: ','s');
        Credit = input('Enter credit amount for course: ');
        Grade = input('Enter letter grade for course: ', 's');
        
        Grades(i,1) = {Grade};
        Credits(i,1) = [Credit];
        Courses(i,1) = {Course};
    end
    
        CreditSum = sum(Credits);
end

%% Each college has different grading systems 
%% Loop below can be chnaged based on your college gpa system

for j = 1:NumClasses
    if Grades{j} == 'A'
        Points(j,1) = 4*Credits(j);
    elseif Grades{j} == 'B'
        Points(j,1) = 3*Credits(j);
    elseif Grades{j} == 'C'
        Points(j,1) = 2*Credits(j);
    elseif Grades{j} == 'D'
        Points(j,1) = 1*Credits(j);
    else
        Points(j,1) = 0*Credits(j);
    end
    
    Quality = sum(Points(1:end,1));
    Qpoints = Points(1:end,1);
    Gpa = Quality/CreditTotal;
end

display = table(Courses,Credits,Grades,Qpoints)
fprintf('GPA for this semester: %0.2f\n',Gpa)
