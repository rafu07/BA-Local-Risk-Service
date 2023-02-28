const cds = require("@sap/cds");

module.exports = async (srv) => {
  const messaging = await cds.connect.to("messaging");

  srv.after("READ", "Risks", async (riskData) => {
    const risks = Array.isArray(riskData) ? riskData : [riskData];

    for (const risk of risks) {
      if (risk.impact >= 100000) {
        risk.criticality = 1;
      } else {
        risk.criticality = 2;
      }
    }
}); 

srv.after("CREATE", "Risks", async (riskData) => {

        console.log(riskData)
      await messaging.emit("dts/I538951mc/I538951/topic1", {
        ID: riskData.ID,
        title: riskData.title,
        prio: riskData.prio,
        supplierID: riskData.supplier_ID,
      });
})


};
