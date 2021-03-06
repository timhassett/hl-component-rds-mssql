CfhighlanderTemplate do

    Name 'rds-mssql'
    Description "#{component_name} - #{component_version}"
    
    ComponentVersion component_version
  
    Parameters do
      ComponentParam 'VPCId', type: 'AWS::EC2::VPC::Id'
      ComponentParam 'StackOctet', isGlobal: true
      ComponentParam 'RDSSnapshotID'
      ComponentParam 'MultiAZ', 'false', allowedValues: ['true','false']
      ComponentParam 'EnvironmentName', 'dev', isGlobal: true
      ComponentParam 'EnvironmentType', 'development', isGlobal: true, allowedValues: ['development', 'production']
      ComponentParam 'RDSInstanceType'
      ComponentParam 'RDSAllocatedStorage'
      ComponentParam 'DnsDomain'
      ComponentParam 'SubnetIds', type: 'CommaDelimitedList'
    end
end
