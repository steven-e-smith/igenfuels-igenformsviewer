<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>Alabama Forms Group</Group> 
    <Datasource>server=localhost;database=IGenFuels_Data_US_QA_Lcl;trusted_connection=True;</Datasource> 
    <DataSetName></DataSetName> 
    <Datasets>
        <Dataset>
            <Name>ALIF_Inventory</Name> 
            <SQL>select * from vw_WSTF where (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF'</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>ALIF1</Name> 
        <Title>ALIF_1</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\Jared\Documents\Alabama pngs\ALIF1_MonthlyRemittance_v110505.png</Image> 
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
                <Name>1.1.1.B</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.A] * .02</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>348</Top> 
                <Left>672</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>Zip</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>276</Top> 
                <Left>589</Left> 
                <Width>55</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>Mailing_address</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>275</Top> 
                <Left>38</Left> 
                <Width>353</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>City</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>274</Top> 
                <Left>397</Left> 
                <Width>100</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>This_is_to_Certify_That</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>242</Top> 
                <Left>216</Left> 
                <Width>264</Width> 
                <Height>18</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
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
                <Name>State</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>276</Top> 
                <Left>509</Left> 
                <Width>59</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.A</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'SYS_FDD' and (Product) IN ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>348</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'SYS_FDD' and (Product) IN ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>386</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.2.A] * 0.15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>386</Top> 
                <Left>672</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'SYS_FDD' and (Product) IN ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>425</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.3.A] * 0.00025</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>425</Top> 
                <Left>672</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'SYS_FDD' and (Product) IN ('154', '160', '161', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>462</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.4.A] * 0.02</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>462</Top> 
                <Left>673</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'SYS_FDD' and (Product) IN ('072', '073', '074'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>501</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.5.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.5.A] * 0.01</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>499</Top> 
                <Left>674</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.6.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>541</Top> 
                <Left>675</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>577</Top> 
                <Left>675</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.8.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>615</Top> 
                <Left>675</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'SYS_FDD' and (Product) IN ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>651</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.9.A] * 0.02</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>651</Top> 
                <Left>676</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.10.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'IF5' and (Product) IN ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>688</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.10.A] * 0.00025</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>690</Top> 
                <Left>675</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.11.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'IF4L' and (Product) IN ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>730</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.11.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.11.A] * 0.00025</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>730</Top> 
                <Left>675</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.12.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'IF8' and (Product) IN ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>768</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.12.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.12.A] * 0.00025</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>768</Top> 
                <Left>674</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.13.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) = 'IF4W' and (Product) IN ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>805</Top> 
                <Left>45</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.1.13.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.13.A] * 0.00025</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>805</Top> 
                <Left>674</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.14.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) in ('IF4LC', 'IF4WC', 'IF5C', 'IF8C') and (Product) in ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>869</Top> 
                <Left>48</Left> 
                <Width>90</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.14.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.2.14.A] * 0.01975</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>870</Top> 
                <Left>700</Left> 
                <Width>73</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.15.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) in ('IF4LC', 'IF4WC', 'IF5C', 'IF8C') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>918</Top> 
                <Left>47</Left> 
                <Width>90</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.15.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.2.15.A] * 0.00975</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>917</Top> 
                <Left>700</Left> 
                <Width>73</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.16.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) in ('IF7') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>966</Top> 
                <Left>48</Left> 
                <Width>90</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.16.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.2.16.A] * 0.01</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>965</Top> 
                <Left>700</Left> 
                <Width>73</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.17.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Net_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and (Schedule_Code) in ('IF7') and (Product) in ('152', '153', '226', '227', '228', '231', '241'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1014</Top> 
                <Left>48</Left> 
                <Width>90</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.17.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.2.17.A] * 0.02</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>1013</Top> 
                <Left>700</Left> 
                <Width>73</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>1.2.19.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=Sum(1.1.*.B) - [1.2.14.B] - [1.2.15.B] - [1.2.16.B] - [1.2.17.B] + [1.2.18.B]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>1086</Top> 
                <Left>700</Left> 
                <Width>73</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
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
                <Name>tbrControlsLabel_47</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_47</Image> 
                <Top>2169</Top> 
                <Left>125</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_45</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1191</Top> 
                <Left>39</Left> 
                <Width>228</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_46</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1191</Top> 
                <Left>307</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_47</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1244</Top> 
                <Left>38</Left> 
                <Width>315</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_48</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1244</Top> 
                <Left>418</Left> 
                <Width>321</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_49</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1322</Top> 
                <Left>658</Left> 
                <Width>74</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.2.18.B</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsTextBox_49</Image> 
                <Top>1059</Top> 
                <Left>700</Left> 
                <Width>73</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_45</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1191</Top> 
                <Left>39</Left> 
                <Width>228</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_46</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1191</Top> 
                <Left>307</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_47</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1244</Top> 
                <Left>38</Left> 
                <Width>315</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_48</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1244</Top> 
                <Left>418</Left> 
                <Width>321</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsTextBox_49</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsTextBox_45</Image> 
                <Top>1322</Top> 
                <Left>658</Left> 
                <Width>74</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
        <Name>ALIF2</Name> 
        <Title>ALIF2</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\Jared\Documents\Alabama pngs\ALIF2_ReceiptAndSales_1v110505.png</Image> 
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
                <Name>tbrControlsLabel_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>119</Top> 
                <Left>51</Left> 
                <Width>379</Width> 
                <Height>20</Height> 
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
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>119</Top> 
                <Left>733</Left> 
                <Width>215</Width> 
                <Height>20</Height> 
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
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>119</Top> 
                <Left>959</Left> 
                <Width>126</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_4</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>119</Top> 
                <Left>1092</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_7</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>119</Top> 
                <Left>457</Left> 
                <Width>272</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_14</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>168</Top> 
                <Left>1401</Left> 
                <Width>100</Width> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_15</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>193</Top> 
                <Left>1483</Left> 
                <Width>100</Width> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('3B') and (Product) in ('065', '071', '124', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>278</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>279</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>278</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.2.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>278</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>278</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.2.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>278</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>299</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>300</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.3.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>299</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.3.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>300</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.3.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>301</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.3.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>300</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=if(([1.2.7.B] + [1.2.8.B] + [1.2.9.B] + [1.2.10.B] + [1.2.16.B] + [1.2.20.B]) - ([1.1.1.B] + [1.1.2.B] + [1.1.3.B]) > 0,[1.2.7.B] + [1.2.8.B] + [1.2.9.B] + [1.2.10.B] + [1.2.16.B] + [1.2.20.B]) - ([1.1.1.B] + [1.1.2.B] + [1.1.3.B],0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>320</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=if(([1.2.7.A] + [1.2.8.A] + [1.2.9.A] + [1.2.10.A] + [1.2.16.A] + [1.2.20.A]) - ([1.1.1.A] + [1.1.2.A] + [1.1.3.A]) > 0, ([1.2.7.A] + [1.2.8.A] + [1.2.9.A] + [1.2.10.A] + [1.2.16.A] + [1.2.20.A]) - ([1.1.1.A] + [1.1.2.A] + [1.1.3.A]),0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>320</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.4.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=if(([1.2.7.C] + [1.2.8.C] + [1.2.9.C] + [1.2.10.C] + [1.2.16.C] + [1.2.20.C]) - ([1.1.1.C] + [1.1.2.C] + [1.1.3.C]) > 0,([1.2.7.C] + [1.2.8.C] + [1.2.9.C] + [1.2.10.C] + [1.2.16.C] + [1.2.20.C]) - ([1.1.1.C] + [1.1.2.C] + [1.1.3.C]),0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>319</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.4.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.2.7.E] + [1.2.8.E] + [1.2.9.E] + [1.2.10.E] + [1.2.16.E] + [1.2.20.E]) - ([1.1.1.E] + [1.1.2.E] + [1.1.3.E]) > 0,([1.2.7.E] + [1.2.8.E] + [1.2.9.E] + [1.2.10.E] + [1.2.16.E] + [1.2.20.E]) - ([1.1.1.E] + [1.1.2.E] + [1.1.3.E]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>320</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.4.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.2.7.D] + [1.2.8.D] + [1.2.9.D] + [1.2.10.D] + [1.2.12.D] + [1.2.14.D] + [1.2.15.D] + [1.2.16.D] + [1.2.17.D] + [1.2.20.D]) - ([1.1.1.D] + [1.1.2.D] + [1.1.3.D]) > 0,([1.2.7.D] + [1.2.8.D] + [1.2.9.D] + [1.2.10.D] + [1.2.12.D] + [1.2.14.D] + [1.2.15.D] + [1.2.16.D] + [1.2.17.D] + [1.2.20.D]) - ([1.1.1.D] + [1.1.2.D] + [1.1.3.D]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>320</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.4.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.2.7.F] + [1.2.8.F] + [1.2.9.F] + [1.2.10.F] + [1.2.12.F] + [1.2.13.F] + [1.2.14.F] + [1.2.15.F] + [1.2.16.F] + [1.2.17.F] + [1.2.20.F]) - ([1.1.1.F] + [1.1.2.F] + [1.1.3.F]) > 0,([1.2.7.F] + [1.2.8.F] + [1.2.9.F] + [1.2.10.F] + [1.2.12.F] + [1.2.13.F] + [1.2.14.F] + [1.2.15.F] + [1.2.16.F] + [1.2.17.F] + [1.2.20.F]) - ([1.1.1.F] + [1.1.2.F] + [1.1.3.F]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>320</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.5.2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>343</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>342</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>342</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.5.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>343</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.5.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>343</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.5.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>342</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6.2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>364</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>364</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>363</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>364</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>364</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>361</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6B.2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.1.*.B)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>387</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6B.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.1.*.A)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>386</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6B.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.1.*.C)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>386</Top> 
                <Left>704</Left> 
                <Width>155</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6B.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.1.*.E)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>387</Top> 
                <Left>1030</Left> 
                <Width>155</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6B.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.1.*.D)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>387</Top> 
                <Left>868</Left> 
                <Width>155</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.6B.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.1.*.F)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>387</Top> 
                <Left>1193</Left> 
                <Width>155</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>431</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>50</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>431</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>50</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>430</Top> 
                <Left>704</Left> 
                <Width>155</Width> 
                <Height>50</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.7.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>431</Top> 
                <Left>1030</Left> 
                <Width>155</Width> 
                <Height>50</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.7.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>430</Top> 
                <Left>868</Left> 
                <Width>155</Width> 
                <Height>50</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.7.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>431</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>50</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.8.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPD') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>489</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.8.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPD') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>489</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.8.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPD') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>489</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.8.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPD') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>489</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.8.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPD') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>489</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.8.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPD') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>492</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF6') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>511</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF6') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>511</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.9.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF6') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>511</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.9.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF6') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>511</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.9.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF6') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>511</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.9.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF6') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>514</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF10A') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>531</Top> 
                <Left>541</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.10.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF10A') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>531</Top> 
                <Left>378</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.10.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF10A') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>531</Top> 
                <Left>703</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.10.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF10A') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>531</Top> 
                <Left>1029</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.10.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF10A') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>531</Top> 
                <Left>867</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.10.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF10A') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>535</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.11.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.1.1.B] + [1.1.2.B] + [1.1.3.B]) - ([1.2.7.B] + [1.2.8.B] + [1.2.9.B] + [1.2.10.B] + [1.2.16.B] +[1.2.20.B]) > 0, ([1.1.1.B] + [1.1.2.B] + [1.1.3.B]) - ([1.2.7.B] + [1.2.8.B] + [1.2.9.B] + [1.2.10.B] + [1.2.16.B] +[1.2.20.B]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>554</Top> 
                <Left>543</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.11.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.1.1.A] + [1.1.2.A] + [1.1.3.A]) - ([1.2.7.A] + [1.2.8.A] + [1.2.9.A] + [1.2.10.A] + [1.2.16.A] + [1.2.20.A]) > 0,([1.1.1.A] + [1.1.2.A] + [1.1.3.A]) - ([1.2.7.A] + [1.2.8.A] + [1.2.9.A] + [1.2.10.A] + [1.2.16.A] + [1.2.20.A]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>554</Top> 
                <Left>380</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.11.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.1.1.C] + [1.1.2.C] + [1.1.3.C]) - ([1.2.7.C] + [1.2.8.C] + [1.2.9.C] + [1.2.10.C] + [1.2.16.C] + [1.2.20.C]) > 0, ([1.1.1.C] + [1.1.2.C] + [1.1.3.C]) - ([1.2.7.C] + [1.2.8.C] + [1.2.9.C] + [1.2.10.C] + [1.2.16.C] + [1.2.20.C]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>554</Top> 
                <Left>705</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.11.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.1.1.E] + [1.1.2.E] + [1.1.3.E]) - ([1.2.7.E] + [1.2.8.E] + [1.2.9.E] + [1.2.10.E] + [1.2.16.E] + [1.2.20.E]) > 0, ([1.1.1.E] + [1.1.2.E] + [1.1.3.E]) - ([1.2.7.E] + [1.2.8.E] + [1.2.9.E] + [1.2.10.E] + [1.2.16.E] + [1.2.20.E]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>554</Top> 
                <Left>1031</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.11.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.1.1.D] + [1.1.2.D] + [1.1.3.D]) - ([1.2.7.D] + [1.2.8.D] + [1.2.9.D] + [1.2.10.D] + [1.2.12.D] + [1.2.14.D] + [1.2.15.D] + [1.2.16.D] + [1.2.17.D] + [1.2.20.D]) > 0, ([1.1.1.D] + [1.1.2.D] + [1.1.3.D]) - ([1.2.7.D] + [1.2.8.D] + [1.2.9.D] + [1.2.10.D] + [1.2.12.D] + [1.2.14.D] + [1.2.15.D] + [1.2.16.D] + [1.2.17.D] + [1.2.20.D]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>554</Top> 
                <Left>869</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.11.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=If (([1.1.1.F] + [1.1.2.F] + [1.1.3.F]) - ([1.2.7.F] + [1.2.8.F] + [1.2.9.F] + [1.2.10.F] + [1.2.12.F] + [1.2.13.F] + [1.2.14.F] + [1.2.15.F] + [1.2.16.F] + [1.2.17.F] + [1.2.20.F]) > 0, ([1.1.1.F] + [1.1.2.F] + [1.1.3.F]) - ([1.2.7.F] + [1.2.8.F] + [1.2.9.F] + [1.2.10.F] + [1.2.12.F] + [1.2.13.F] + [1.2.14.F] + [1.2.15.F] + [1.2.16.F] + [1.2.17.F] + [1.2.20.F]), 0)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>555</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.18.2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>73 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>703</Top> 
                <Left>541</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.18.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>703</Top> 
                <Left>378</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.18.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>703</Top> 
                <Left>703</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.18.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>76 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>703</Top> 
                <Left>1029</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.18.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>77 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>703</Top> 
                <Left>867</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.18.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>78 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>705</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.19.2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>79 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>725</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.19.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>80 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>725</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.19.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>81 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>724</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.19.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>82 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>725</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.19.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>83 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>724</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.19.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>84 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>725</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.12.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF5', 'IF5C') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>85 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>576</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.12.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF5', 'IF5C') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>86 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>573</Top> 
                <Left>869</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.16.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF', 'IF3X') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>87 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>666</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.16.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF', 'IF3X') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>88 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>665</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.16.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF', 'IF3X') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>89 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>665</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.16.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF', 'IF3X') and (Product) in ('150', '154', '160', '161', '167', '282', '283'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>90 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>667</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.16.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF', 'IF3X') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>91 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>666</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.16.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF', 'IF3X') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>92 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>666</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>13</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.14.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF8C', 'IF8C') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>93 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>619</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.14.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF8', 'IF8C') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>94 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>617</Top> 
                <Left>868</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.15.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF4W', 'IF4WC') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>95 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>643</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.15.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF4W', 'IF4WC') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>96 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>644</Top> 
                <Left>868</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.17.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF7') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>97 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>682</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.17.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF7') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>98 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>682</Top> 
                <Left>868</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.13.F</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF4L', 'IF4LC') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>99 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>598</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.A</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>100 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>257</Top> 
                <Left>379</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.B</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>101 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>257</Top> 
                <Left>542</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>102 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>257</Top> 
                <Left>704</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>103 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>257</Top> 
                <Left>866</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.E</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>104 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>257</Top> 
                <Left>1029</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.F</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>105 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>257</Top> 
                <Left>1193</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>tbrControlsTextBox_119</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>106 </TabIndex> 
                <Image>tbrControlsTextBox_119</Image> 
                <Top>119</Top> 
                <Left>1218</Left> 
                <Width>131</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.2.20.A</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>107 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>745</Top> 
                <Left>377</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.20.B</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>108 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>745</Top> 
                <Left>540</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.20.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>109 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>745</Top> 
                <Left>703</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.20.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>110 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>745</Top> 
                <Left>865</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.20.E</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>111 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>745</Top> 
                <Left>1028</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.20.F</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>112 </TabIndex> 
                <Image>tbrControlsTextBox_114</Image> 
                <Top>745</Top> 
                <Left>1192</Left> 
                <Width>159</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.21.2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.2.*.B)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>113 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>767</Top> 
                <Left>542</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.21.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.2.*.A)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>114 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>767</Top> 
                <Left>379</Left> 
                <Width>155</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.21.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.2.*.C)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>115 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>767</Top> 
                <Left>704</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.21.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.2.*.E)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>116 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>767</Top> 
                <Left>1030</Left> 
                <Width>153</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.21.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.2.*.D)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>117 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>767</Top> 
                <Left>868</Left> 
                <Width>154</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.2.21.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(1.2.*.F)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>118 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>767</Top> 
                <Left>1193</Left> 
                <Width>158</Width> 
                <Height>18</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
        <Name>ALIF_2_2</Name> 
        <Title>ALIF_2_2</Title> 
        <Visible>True</Visible> 
        <Image>C:\IGenFuels_QA\FormImages\ALIF2_ReceiptAndSales_v110505_Part2.png</Image> 
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
                <Name>AL_IF_Computer_ID_Number_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>201</Top> 
                <Left>282</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>936</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>936</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>936</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>936</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>936</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>936</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>936</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>936</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>936</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>936</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>237</Top> 
                <Left>55</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>237</Top> 
                <Left>282</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>111 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>965</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>112 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>965</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>113 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>965</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>114 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>965</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>115 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>965</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>272</Top> 
                <Left>55</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>271</Top> 
                <Left>282</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>117 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>994</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>118 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>994</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>119 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>994</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>120 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>994</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>121 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>994</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>309</Top> 
                <Left>55</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>309</Top> 
                <Left>282</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>123 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1023</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>124 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1023</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>125 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1023</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>126 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1023</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>127 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1023</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>345</Top> 
                <Left>54</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>346</Top> 
                <Left>281</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>129 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1052</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>130 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1052</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>131 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1052</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>132 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1052</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>133 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1052</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>381</Top> 
                <Left>52</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>381</Top> 
                <Left>280</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>135 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1082</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>136 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1082</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>137 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1082</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>138 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1082</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>139 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1082</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>418</Top> 
                <Left>53</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>418</Top> 
                <Left>280</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>141 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1111</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>142 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1111</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>143 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1111</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>144 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1111</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>145 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1111</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>456</Top> 
                <Left>54</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>456</Top> 
                <Left>281</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>147 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1141</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>148 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1141</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>149 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1141</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>150 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1141</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>151 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1141</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>490</Top> 
                <Left>54</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>490</Top> 
                <Left>281</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>153 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1169</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>154 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1169</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>155 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1169</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>156 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1169</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>157 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1169</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>528</Top> 
                <Left>54</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>528</Top> 
                <Left>281</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>159 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1198</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>160 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1198</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>161 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1198</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>162 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1198</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>163 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1198</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>564</Top> 
                <Left>52</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>564</Top> 
                <Left>280</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>165 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1227</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>166 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1227</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>167 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1227</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>168 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1227</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>169 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1227</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>81 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>599</Top> 
                <Left>54</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>82 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>599</Top> 
                <Left>282</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>171 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1257</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>172 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1257</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>173 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1257</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>174 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1257</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>175 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1257</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_of_Company_From_Whom_Purchased_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>88 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>636</Top> 
                <Left>55</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>AL_IF_Computer_ID_Number_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Number):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>89 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>636</Top> 
                <Left>282</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>177 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1288</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>178 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1287</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>179 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1287</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>180 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1287</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>181 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1287</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>95 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>672</Top> 
                <Left>356</Left> 
                <Width>74</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>96 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>672</Top> 
                <Left>443</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>97 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>672</Top> 
                <Left>517</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>98 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>671</Top> 
                <Left>589</Left> 
                <Width>77</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FFR') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>99 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>672</Top> 
                <Left>679</Left> 
                <Width>128</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>100 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>709</Top> 
                <Left>356</Left> 
                <Width>74</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>101 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>709</Top> 
                <Left>443</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>102 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>709</Top> 
                <Left>517</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>103 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>708</Top> 
                <Left>589</Left> 
                <Width>77</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FPR') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>104 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>709</Top> 
                <Left>679</Left> 
                <Width>128</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Gallons_Purchased_Gasoline/Substitutes_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(2.1.*.A)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>105 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>745</Top> 
                <Left>356</Left> 
                <Width>74</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Gallons_Purchased_Lube_Oil_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(2.1.*.B)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>106 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>745</Top> 
                <Left>443</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Gallons_Purchased_Jet_Fuel_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(2.1.*.C)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>107 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>745</Top> 
                <Left>517</Left> 
                <Width>63</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Gallons_Purchased_Kerosene_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(2.1.*.D)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>108 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>744</Top> 
                <Left>589</Left> 
                <Width>77</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Gallons_Purchased_Dyed_Diesel_Fuel_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(2.1.*.E)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>109 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>745</Top> 
                <Left>679</Left> 
                <Width>128</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>110 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>965</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>111 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>965</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>112 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>965</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>113 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>965</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>114 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>965</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>115 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>965</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>116 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>994</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>117 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>994</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>118 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>994</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>119 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>994</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>120 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>994</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>121 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>994</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>122 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1023</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>123 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1023</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>124 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1023</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>125 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1023</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>126 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1023</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>127 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1023</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>128 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1052</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>129 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1052</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>130 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1052</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>131 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1052</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>132 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1052</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>133 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1052</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>134 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1082</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>135 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1082</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>136 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1082</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>137 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1082</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>138 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1082</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>139 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1082</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>140 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1111</Top> 
                <Left>53</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>141 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1111</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>142 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1111</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>143 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1111</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>144 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1111</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>145 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1111</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>146 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1141</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>147 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1141</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>148 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1141</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>149 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1141</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>150 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1141</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>151 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1141</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>152 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1169</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>153 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1169</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>154 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1169</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>155 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1169</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>156 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1169</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>157 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1169</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>158 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1198</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>159 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1198</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>160 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1198</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>161 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1198</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>162 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1198</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>163 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1198</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>164 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1227</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>165 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1227</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>166 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1227</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>167 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1227</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>168 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1227</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>169 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1227</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>170 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1257</Top> 
                <Left>55</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>171 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1257</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>172 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1257</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>173 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1257</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>174 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1257</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>175 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1257</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Name_Of_Company_Sold_To_In_AL_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>176 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1288</Top> 
                <Left>56</Left> 
                <Width>202</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gasoline/Substitutes_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>177 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1288</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Lube_Oil_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>178 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>1287</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Jet_Fuel_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>179 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>1287</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Kerosene_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>180 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1287</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Dyed_Diesel_Fuel_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>181 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1287</Top> 
                <Left>719</Left> 
                <Width>86</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_Gasoline/Substitutes_Gallons</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>182 </TabIndex> 
                <Image>tbrControlsLabel_187</Image> 
                <Top>1314</Top> 
                <Left>267</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_Lube_Oil_Gallons</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>183 </TabIndex> 
                <Image>tbrControlsLabel_188</Image> 
                <Top>1314</Top> 
                <Left>381</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_Jet_Fuel_Gallons</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>184 </TabIndex> 
                <Image>tbrControlsLabel_189</Image> 
                <Top>1314</Top> 
                <Left>495</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_Kerosene_Gallons</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>185 </TabIndex> 
                <Image>tbrControlsLabel_190</Image> 
                <Top>1313</Top> 
                <Left>609</Left> 
                <Width>100</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_Dyed_Diesel_Fuel_Gallons</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('SYS_FDD') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>186 </TabIndex> 
                <Image>tbrControlsLabel_191</Image> 
                <Top>1313</Top> 
                <Left>717</Left> 
                <Width>91</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_190</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>187 </TabIndex> 
                <Image>tbrControlsTextBox_190</Image> 
                <Top>65</Top> 
                <Left>405</Left> 
                <Width>152</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>2.2.1.A</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>="See attached detail report"</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>189 </TabIndex> 
                <Image>tbrControlsTextBox_190</Image> 
                <Top>936</Top> 
                <Left>54</Left> 
                <Width>202</Width> 
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
                <Name>2.2.1.A</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>="See attached detail report"</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>189 </TabIndex> 
                <Image>tbrControlsTextBox_190</Image> 
                <Top>936</Top> 
                <Left>54</Left> 
                <Width>202</Width> 
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
                <Name>Name_of_Company_From_Whom_Purchased_1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>190 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>205</Top> 
                <Left>55</Left> 
                <Width>214</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>ALIF_Inventory</Name> 
        <Title>Inspection Fee Inventory</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\AL\Inspection Fee\ALIF_INVENTORY.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>ALIF_Inventory</DataSetName> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>Schedule_Code_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>222</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>222</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>222</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>222</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>222</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>222</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>222</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>238</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>238</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>238</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>238</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>238</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>238</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>238</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>253</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>253</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>253</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>253</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>253</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>253</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>253</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>267</Top> 
                <Left>52</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>268</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>268</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>268</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>268</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>268</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>268</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>283</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>283</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>283</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>283</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>283</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>283</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>283</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>298</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>298</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>298</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>298</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>298</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>298</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>298</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>315</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>315</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>315</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>315</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>315</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>315</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>315</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>332</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>332</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>332</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>332</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>332</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>332</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>332</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>349</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>349</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>349</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>349</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>349</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>349</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>349</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>366</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>366</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>366</Top> 
                <Left>316</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>366</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>366</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>366</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>366</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>383</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>383</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>383</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>73 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>383</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>383</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>383</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>76 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>383</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>77 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>400</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>78 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>400</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>79 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>400</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>80 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>400</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>81 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>400</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>82 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>400</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>83 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>400</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>84 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>417</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>85 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>417</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>86 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>417</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>87 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>417</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>88 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>417</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>89 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>417</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>90 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>417</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>91 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>434</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>92 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>434</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>93 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>434</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>94 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>434</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>95 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>434</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>96 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>434</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>97 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>434</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>98 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>451</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>99 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>451</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>100 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>451</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>101 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>451</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>102 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>451</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>103 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>451</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>104 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>451</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>105 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>468</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>106 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>468</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>107 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>468</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>108 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>468</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>109 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>468</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>110 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>468</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>111 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>468</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>112 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>113 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>485</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>114 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>485</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>115 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>485</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>116 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>485</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>117 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>485</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>118 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>485</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>119 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>502</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>120 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>502</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>121 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>502</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>122 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>502</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>123 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>502</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>124 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>502</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>125 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>502</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>126 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>520</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>127 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>520</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>128 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>520</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>129 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>520</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>130 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>520</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>131 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>520</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>132 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>520</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):20</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>133 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>537</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>134 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>537</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):20</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>135 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>537</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):20</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>136 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>537</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):20</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>137 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>537</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):20</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>138 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>537</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):20</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>139 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>537</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):21</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>140 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>553</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>141 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>553</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):21</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>142 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>553</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):21</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>143 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>553</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):21</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>144 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>553</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):21</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>145 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>553</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):21</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>146 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>553</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):22</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>147 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>570</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>148 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>570</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):22</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>149 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>570</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):22</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>150 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>570</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):22</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>151 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>570</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):22</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>152 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>570</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):22</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>153 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>570</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):23</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>154 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>587</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>155 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>587</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):23</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>156 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>587</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):23</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>157 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>587</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):23</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>158 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>587</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):23</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>159 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>587</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):23</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>160 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>587</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):24</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>161 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>604</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>162 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>604</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):24</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>163 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>604</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):24</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>164 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>604</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):24</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>165 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>604</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):24</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>166 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>604</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):24</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>167 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>604</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):25</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>168 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>622</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>169 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>622</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):25</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>170 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>622</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):25</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>171 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>622</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):25</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>172 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>622</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):25</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>173 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>622</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):25</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>174 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>622</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):26</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>175 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>638</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>176 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>638</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):26</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>177 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>638</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):26</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>178 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>638</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):26</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>179 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>638</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):26</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>180 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>638</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):26</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>181 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>638</Top> 
                <Left>638</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):27</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>182 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>654</Top> 
                <Left>54</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>183 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>655</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):27</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>184 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>655</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):27</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>185 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>655</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):27</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>186 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>655</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):27</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>187 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>655</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):27</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>188 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>655</Top> 
                <Left>638</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):28</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>189 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>672</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>190 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>672</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):28</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>191 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>672</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):28</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>192 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>672</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):28</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>193 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>672</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):28</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>194 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>672</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):28</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>195 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>672</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):29</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>196 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>689</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>197 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>689</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):29</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>198 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>689</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):29</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>199 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>689</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):29</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>200 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>689</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):29</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>201 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>689</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):29</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>202 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>689</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>203 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>705</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>204 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>705</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>205 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>705</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>206 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>705</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>207 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>705</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>208 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>705</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>209 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>705</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):31</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>210 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>723</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>211 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>723</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):31</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>212 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>723</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):31</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>213 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>723</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):31</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>214 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>723</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):31</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>215 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>723</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):31</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>216 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>723</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):32</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>217 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>740</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>218 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>740</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):32</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>219 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>740</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):32</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>220 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>740</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):32</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>221 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>740</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):32</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>222 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>740</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):32</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>223 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>740</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):33</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>224 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>757</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>225 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>757</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):33</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>226 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>757</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):33</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>227 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>757</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):33</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>228 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>757</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):33</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>229 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>757</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):33</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>230 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>757</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):34</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>231 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>775</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>232 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>775</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):34</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>233 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>775</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):34</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>234 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>775</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):34</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>235 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>775</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):34</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>236 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>775</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):34</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>237 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>775</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):35</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>238 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>791</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>239 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>791</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):35</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>240 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>791</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):35</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>241 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>791</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):35</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>242 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>791</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):35</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>243 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>791</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):35</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>244 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>791</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):36</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>245 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>808</Top> 
                <Left>54</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>246 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>808</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):36</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>247 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>808</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):36</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>248 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>808</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):36</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>249 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>808</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):36</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>250 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>808</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):36</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>251 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>808</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):37</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>252 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>825</Top> 
                <Left>54</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>253 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>825</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):37</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>254 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>825</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):37</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>255 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>825</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):37</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>256 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>825</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):37</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>257 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>825</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):37</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>258 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>825</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):38</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>259 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>842</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>260 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>842</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):38</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>261 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>842</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):38</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>262 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>842</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):38</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>263 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>842</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):38</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>264 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>842</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_38</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):38</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>265 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>842</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):39</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>266 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>860</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>267 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>860</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):39</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>268 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>860</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):39</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>269 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>860</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):39</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>270 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>860</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):39</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>271 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>860</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_39</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):39</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>272 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>860</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):40</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>273 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>876</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>274 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>876</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):40</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>275 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>876</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):40</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>276 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>876</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):40</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>277 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>876</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):40</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>278 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>876</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_40</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):40</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>279 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>876</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):41</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>280 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>893</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>281 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>893</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):41</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>282 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>893</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):41</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>283 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>893</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):41</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>284 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>893</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):41</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>285 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>893</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_41</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):41</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>286 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>893</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):42</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>287 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>910</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>288 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>910</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):42</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>289 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>910</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):42</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>290 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>910</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):42</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>291 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>910</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):42</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>292 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>910</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_42</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):42</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>293 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>910</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):43</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>294 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>927</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>295 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>927</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):43</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>296 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>927</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):43</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>297 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>927</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):43</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>298 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>927</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):43</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>299 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>927</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_43</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):43</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>300 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>927</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):44</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>301 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>944</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>302 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>944</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):44</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>303 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>944</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):44</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>304 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>944</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):44</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>305 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>944</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):44</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>306 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>944</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_44</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):44</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>307 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>944</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):45</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>308 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>961</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>309 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>961</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):45</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>310 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>961</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):45</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>311 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>961</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):45</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>312 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>961</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):45</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>313 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>961</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_45</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):45</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>314 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>961</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Code_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Schedule_Code):46</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>315 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>978</Top> 
                <Left>53</Left> 
                <Width>58</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Schedule_Description_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>316 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>978</Top> 
                <Left>118</Left> 
                <Width>189</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Product_Code_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Product):46</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>317 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>978</Top> 
                <Left>315</Left> 
                <Width>65</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_FCN_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_FCN):46</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>318 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>978</Top> 
                <Left>389</Left> 
                <Width>82</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_City_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_City):46</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>319 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>978</Top> 
                <Left>480</Left> 
                <Width>100</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Inventory_Location_State_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Origin_State):46</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>320 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>978</Top> 
                <Left>590</Left> 
                <Width>42</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>Net_Quantity_46</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=ds(Net_Quantity):46</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>321 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>978</Top> 
                <Left>637</Left> 
                <Width>119</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>5</FontSize> 
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
                <Name>tbrControlsTextBox_323</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>322 </TabIndex> 
                <Image>tbrControlsTextBox_323</Image> 
                <Top>126</Top> 
                <Left>57</Left> 
                <Width>241</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>tbrControlsTextBox_324</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>323 </TabIndex> 
                <Image>tbrControlsTextBox_323</Image> 
                <Top>126</Top> 
                <Left>305</Left> 
                <Width>123</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>tbrControlsTextBox_325</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>324 </TabIndex> 
                <Image>tbrControlsTextBox_323</Image> 
                <Top>126</Top> 
                <Left>433</Left> 
                <Width>152</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>tbrControlsTextBox_326</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>325 </TabIndex> 
                <Image>tbrControlsTextBox_323</Image> 
                <Top>126</Top> 
                <Left>590</Left> 
                <Width>158</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
        <Name>ALIF_3</Name> 
        <Title>ALIF_3</Title> 
        <Visible>True</Visible> 
        <Image>C:\IGenFuels_QA\FormImages\ALIF_3_SalesToBondedDealers_v110214.png</Image> 
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
                <Name>tbrControlsTextBox_1</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_1</Image> 
                <Top>159</Top> 
                <Left>394</Left> 
                <Width>235</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>tbrControlsTextBox_2</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>="See attached detail report"</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_2</Image> 
                <Top>320</Top> 
                <Left>43</Left> 
                <Width>184</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>tbrControlsTextBox_3</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>="See attached detail report"</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_2</Image> 
                <Top>1019</Top> 
                <Left>43</Left> 
                <Width>184</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
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
                <Name>1.1.1.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>881</Top> 
                <Left>312</Left> 
                <Width>95</Width> 
                <Height>30</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>881</Top> 
                <Left>411</Left> 
                <Width>95</Width> 
                <Height>30</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>881</Top> 
                <Left>612</Left> 
                <Width>95</Width> 
                <Height>30</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>881</Top> 
                <Left>511</Left> 
                <Width>96</Width> 
                <Height>30</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>881</Top> 
                <Left>712</Left> 
                <Width>85</Width> 
                <Height>30</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.2.1.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF3X') and (Product) in ('065', '071', '124', '125', '139', '140', '141'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1255</Top> 
                <Left>311</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.2.1.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF3X') and (Product) in ('152', '153', '226', '227', '228', '231'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1255</Top> 
                <Left>712</Left> 
                <Width>84</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.2.1.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF3X') and (Product) in ('130'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1255</Top> 
                <Left>511</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.2.1.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF3X') and (Product) in ('072', '073', '074', '142', '145', '147'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1255</Top> 
                <Left>611</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.2.1.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'AL' and (Return_Code) = 'IF' and  (Schedule_Code) in ('IF3X') and (Product) in ('LUB'))</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1255</Top> 
                <Left>411</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.A] + [1.2.1.A]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1295</Top> 
                <Left>312</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.D] + [1.2.1.D]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1295</Top> 
                <Left>612</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.B] + [1.2.1.B]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1295</Top> 
                <Left>411</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.C] + [1.2.1.C]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1295</Top> 
                <Left>511</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.E] + [1.2.1.E]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1295</Top> 
                <Left>712</Left> 
                <Width>85</Width> 
                <Height>26</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
</Forms> 
