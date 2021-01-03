program eVendas.servidor;

Uses
  Horse,
  Horse.jhonson,

  System.JSON;

Begin

   tHorse.Use(Jhonson);

   THorse.Get('/ping',
   Procedure (Req: THorseRequest; Res: THorseResponse; Next: TProc)
   begin
     Res.Send('pong');
   end);

   THorse.Get('/json',
   Procedure (Req: THorseRequest; Res: THorseResponse; Next: TProc)
   begin
    Res.Send<TJSONObject>(tjsonObject.Create.AddPair('Hello', 'World'));
   end);

   THorse.Listen(9000, Procedure (horse: thorse)
                       begin
                         writeln('Servidor eVendas iniciado!');
                       end
                );
end.
