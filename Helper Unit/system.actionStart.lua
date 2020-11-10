--(option1)

ElementIndex = ElementIndex - 1;

if ElementIndex < 1 then
    ElementIndex = 1;
end

--(option2)

ElementIndex = ElementIndex + 1;

if ElementIndex > NumElements then
    ElementIndex = NumElements;
end

--(option4)

unit.exit()