<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>Alabama Forms Group</Group> 
    <Datasource>server=localhost;database=IGenFuels_Data_US_QA_Lcl;trusted_connection=True;</Datasource> 
    <DataSetName></DataSetName> 
    <Datasets>
        <Dataset>
            <Name>Alabama Forms Group</Name> 
            <SQL>select top 1 * from Companies C, Company_Addresses CA, vw_WSTF W where (C.Id) = (CA.Company_Id) and (C.SOR) = (W.SOR) and (Filing_Jurisdiction) = 'AL'</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>STTFC</Name> 
        <Title>Underground Storage Fee</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\ALPNGs\TOB-STTFC_AL UST.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>1.0.5.C</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.0.1.C] + [1.0.2.C] + [1.0.3.C] + [1.0.4.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>483</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.0.5.C] - [1.0.6.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>516</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.8.C</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.0.7.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>534</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsCheckBox_30</Name> 
                <Type>CHECKBOX </Type> 
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
                <Image>tbrControlsCheckBox_29</Image> 
                <Top>268</Top> 
                <Left>45</Left> 
                <Width>23</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.4.C</Name> 
                <Type>TextBox </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>467</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.2.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>433</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.3.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>450</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.6.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>500</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_25</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_20</Image> 
                <Top>216</Top> 
                <Left>474</Left> 
                <Width>326</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_26</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_20</Image> 
                <Top>250</Top> 
                <Left>496</Left> 
                <Width>304</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_27</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_20</Image> 
                <Top>283</Top> 
                <Left>534</Left> 
                <Width>266</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_28</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>Stan</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_28</Image> 
                <Top>195</Top> 
                <Left>52</Left> 
                <Width>372</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsCheckBox_30</Name> 
                <Type>CHECKBOX </Type> 
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
                <Image>tbrControlsCheckBox_29</Image> 
                <Top>268</Top> 
                <Left>45</Left> 
                <Width>23</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_28</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>290</Top> 
                <Left>91</Left> 
                <Width>229</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_29</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>314</Top> 
                <Left>91</Left> 
                <Width>229</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_30</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>340</Top> 
                <Left>144</Left> 
                <Width>254</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_20</Name> 
                <Type>TextBox </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>467</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_22</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>434</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_23</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>450</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_24</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>500</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_28</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>316</Top> 
                <Left>534</Left> 
                <Width>266</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_32</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>Title</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>641</Top> 
                <Left>82</Left> 
                <Width>335</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsCheckBox_32</Name> 
                <Type>CHECKBOX </Type> 
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
                <Image>tbrControlsCheckBox_29</Image> 
                <Top>551</Top> 
                <Left>340</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_28</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>Stan</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_28</Image> 
                <Top>195</Top> 
                <Left>52</Left> 
                <Width>372</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_29</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_28</Image> 
                <Top>221</Top> 
                <Left>53</Left> 
                <Width>372</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_30</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_28</Image> 
                <Top>244</Top> 
                <Left>52</Left> 
                <Width>141</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_32</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_28</Image> 
                <Top>245</Top> 
                <Left>335</Left> 
                <Width>89</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_29</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>314</Top> 
                <Left>91</Left> 
                <Width>229</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_30</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>340</Top> 
                <Left>144</Left> 
                <Width>254</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_31</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_28</Image> 
                <Top>245</Top> 
                <Left>200</Left> 
                <Width>128</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_32</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>Title</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>641</Top> 
                <Left>82</Left> 
                <Width>335</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>tbrControlsTextBox_34</Name> 
                <Type>TextBox </Type> 
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
                <Image>tbrControlsTextBox_34</Image> 
                <Top>615</Top> 
                <Left>472</Left> 
                <Width>328</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.1.A</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' AND (Return_Code) = 'STTFC' AND (Schedule_Code) = 'UST_L1')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_35</Image> 
                <Top>416</Top> 
                <Left>85</Left> 
                <Width>317</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
                <Name>1.0.1.C</Name> 
                <Type>Label </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.0.1.A] * .01</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_36</Image> 
                <Top>416</Top> 
                <Left>516</Left> 
                <Width>113</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
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
