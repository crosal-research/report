import pandas as pd
import matplotlib.pyplot as plt


dvix = pd.read_excel("../data/data.xlsx", sheetname="VIX", index_col=0).dropna()
dvix.columns = ["Brazil's ETF VIX", "VIX"]
dcsv = pd.read_excel("../data/data.xlsx", sheetname="cds_consolidate", index_col=0)
dcsv.columns = ["Brazil 5-Years CSV", "MXN 5-Years CSV"]



# charts
def gen_chart(df, title, y_title, date_ini):
    """"""
    plt.style.use("ggplot")
    df_final = df[df.index >= date_ini]

    # Choose colors from http://colorbrewer2.org/ under "Export"
    fig = plt.figure()
    ax = fig.add_subplot(111)
    df_final.iloc[:, 0].plot(ax=ax, color='red', linewidth=2, legend=True)
    df_final.iloc[:, 1].plot(ax=ax, color='orange', linewidth=2, legend=True)

    # labels labels
    for label in ax.xaxis.get_ticklabels():
        label.set_fontsize(18)
    for label in ax.yaxis.get_ticklabels():
        label.set_fontsize(18)

    # title
    ax.set_title(title, fontsize=28)
    ax.title.set_position([.5,1.03])

    # label

    fig.tight_layout()
    return fig

# vix
date_ini = "2016-12-01"
fig_vix = gen_chart(dvix, "Implicit Volatility", "%", date_ini)
plt.savefig("./vix.png")

# csv
date_ini = "2016-01-01"
fig_csv = gen_chart(dcsv, "CDS Spreads", "bps", date_ini)
plt.savefig("./csv.png")
