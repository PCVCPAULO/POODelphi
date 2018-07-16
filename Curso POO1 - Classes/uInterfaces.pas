unit uInterfaces;

interface

  type
    IAnimal = interface
      function classe():string;
    end;


    TAnimal = class(TInterfacedObject,IAnimal)
       function classe():string;virtual;
       constructor Create;
    end;


    THomem = class (TInterfacedObject,IAnimal)

    end;

    TCachorro = class(TInterfacedObject,IAnimal)

    end;

implementation

{ TAnimal }

function TAnimal.classe: string;
begin

end;

constructor TAnimal.Create;
begin
  inherited;
end;
end.
