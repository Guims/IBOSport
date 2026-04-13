.class public Lz4/y;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Lz4/x;

.field public B0:Landroid/widget/EditText;

.field public C0:Landroid/widget/Button;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    return-void
.end method

.method public static T(Ljava/lang/String;)Lz4/y;
    .locals 1

    new-instance v0, Lz4/y;

    invoke-direct {v0}, Lz4/y;-><init>()V

    iput-object p0, v0, Lz4/y;->z0:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0e0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b012a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lz4/y;->B0:Landroid/widget/EditText;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/y;->C0:Landroid/widget/Button;

    iget-object p2, p0, Lz4/y;->B0:Landroid/widget/EditText;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    aput-object v0, v2, v1

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p0, Lz4/y;->C0:Landroid/widget/Button;

    new-instance v0, LB4/u;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
