<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>TOR</Group> 
    <Version>1.0</Version> 
    <Datasource>server=localhost;database=IGenFuels_Data_US_QA;uid=qa;pwd=qa;trusted_connection=false;</Datasource> 
    <DataSetName></DataSetName> 
    <Comments></Comments> 
    <Datasets>
    </Datasets>
    <Form>
        <Name>TOR</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>conditionalvalue</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>NO</Text> 
                <Caption>NO</Caption> 
                <Value>=if([testvalue] in (12,10,35,44,99),Yes,No)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>105</Top> 
                <Left>88</Left> 
                <Width>619</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>testvalue</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>INT</Text> 
                <Caption>INT</Caption> 
                <Value>INT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>51</Top> 
                <Left>155</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_3</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>RATS</Text> 
                <Caption>RATS</Caption> 
                <Value>=if([txtValue] IN (YUP,INTO,YES,NO),Barf,Rats)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>200</Top> 
                <Left>170</Left> 
                <Width>419</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>txtValue</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>xxINTO</Text> 
                <Caption>xxINTO</Caption> 
                <Value>xxINTO</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_4</Image> 
                <Top>308</Top> 
                <Left>99</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_5</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>317</Top> 
                <Left>347</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_6</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ziggy</Text> 
                <Caption>ziggy</Caption> 
                <Value>ziggy</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_6</Image> 
                <Top>331</Top> 
                <Left>524</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
</Forms> 
