.class public Lz4/S;
.super Landroidx/fragment/app/m;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/Button;

.field public C0:Landroid/widget/Button;

.field public D0:Ljava/lang/String;

.field public E0:Ljava/lang/String;

.field public F0:Ljava/lang/String;

.field public G0:Ljava/lang/String;

.field public H0:Z

.field public I0:LG4/a;

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz4/S;->D0:Ljava/lang/String;

    iput-object v0, p0, Lz4/S;->E0:Ljava/lang/String;

    iput-object v0, p0, Lz4/S;->F0:Ljava/lang/String;

    iput-object v0, p0, Lz4/S;->G0:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz4/S;->H0:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean p1, p0, Lz4/S;->H0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz4/S;->I0:LG4/a;

    iget-object p1, p1, LG4/a;->b:LG4/d;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "market://details?id="

    invoke-static {}, Lv4/c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, LG4/c;

    invoke-direct {v0, p1}, LG4/c;-><init>(LG4/d;)V

    iget-object p1, p1, LG4/d;->o0:Lib/player/models/AppInfoModel;

    invoke-virtual {p1}, Lib/player/models/AppInfoModel;->getApk_link()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b008d

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_3
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0e005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b03de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/S;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/S;->B0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/S;->C0:Landroid/widget/Button;

    const p2, 0x7f0b03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/S;->A0:Landroid/widget/TextView;

    iget-object p2, p0, Lz4/S;->B0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/S;->C0:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/S;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/S;->D0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/S;->z0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/S;->E0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/S;->B0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/S;->F0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/S;->C0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/S;->G0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
