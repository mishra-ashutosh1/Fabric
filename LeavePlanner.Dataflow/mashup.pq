[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "877ceed2-e2d3-4466-80c1-066dc39906d1"]}[Data]{[lakehouseId = "61ce982a-d0e4-4c85-953d-c69b408528e8"]}[Data];
[BindToDefaultDestination = true]
shared Leave_Planner_120_Sample_Records = let
  Source = Csv.Document(Web.Contents("https://ashutosh1-my.sharepoint.com/personal/ashutoshmishra_ashutosh1_onmicrosoft_com/Documents/Apps/Microsoft Power Query/Uploaded Files/Leave_Planner_120_Sample_Records.csv"), [Delimiter = ",", Columns = 9, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Employee Name", type text}, {"Employee ID", type text}, {"Department", type text}, {"Leave Type", type text}, {"Start Date", type date}, {"End Date", type date}, {"Duration Days", Int64.Type}, {"Status", type text}, {"Comments", type text}})
in
  #"Changed column type";
