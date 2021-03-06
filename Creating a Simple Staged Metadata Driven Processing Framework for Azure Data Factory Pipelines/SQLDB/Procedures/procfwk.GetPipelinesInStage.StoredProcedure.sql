/****** Object:  StoredProcedure [procfwk].[GetPipelinesInStage]    Script Date: 19/02/2020 19:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [procfwk].[GetPipelinesInStage]
	(
	@StageId INT
	)
AS

SET NOCOUNT ON;

BEGIN

	SELECT 
		[PipelineId], 
		[PipelineName] 
	FROM 
		[procfwk].[CurrentExecution]
	WHERE 
		[StageId] = @StageId
	ORDER BY
		[PipelineId] ASC

END
GO
