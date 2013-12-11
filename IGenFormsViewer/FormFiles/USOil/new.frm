<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>test</Group> 
    <Datasource>server=plexdev6\sqlexpress;database=IGenFuels_US;trusted_connection=true;</Datasource> 
    <GroupDataSet></GroupDataSet> 
    <Form>
        <Name>NewForm</Name> 
        <Title>New Form</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\06-144.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>0</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet>select top 10 * from wssor_as400</FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsTextBox_1</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[newform2.tbrControlsTextBox_1.value]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_1</Image> 
                <Top>42</Top> 
                <Left>84</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_2</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sql(select legal_name from companies where sor_company_id='1001')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>155</Top> 
                <Left>93</Left> 
                <Width>459</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>NewForm2</Name> 
        <Title>New Form</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\06-171.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>0</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet></FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsTextBox_1</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>10004</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_1</Image> 
                <Top>16</Top> 
                <Left>40</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
</Forms> 
