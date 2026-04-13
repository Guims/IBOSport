.class public final synthetic Lz4/O;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/P;


# direct methods
.method public synthetic constructor <init>(Lz4/P;I)V
    .locals 0

    iput p2, p0, Lz4/O;->b:I

    iput-object p1, p0, Lz4/O;->q:Lz4/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lz4/O;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/O;->q:Lz4/P;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lz4/P;->C0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    const-string v2, "Copied Text"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "Copied to clipboard"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/O;->q:Lz4/P;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lz4/P;->B0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    const-string v2, "Copied Text"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "Copied to clipboard"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lz4/O;->q:Lz4/P;

    iget-object p1, p1, Lz4/P;->R0:Lib/player/base/helper/c;

    invoke-virtual {p1}, Lib/player/base/helper/c;->n()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lz4/O;->q:Lz4/P;

    iget-object v0, p1, Lz4/P;->Q0:LE1/t;

    iget-object v0, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/base/k;

    invoke-virtual {v0}, Lib/player/base/k;->O()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lz4/O;->q:Lz4/P;

    iget-object v0, p1, Lz4/P;->Q0:LE1/t;

    iget-object v0, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, Lib/player/base/k;

    invoke-virtual {v0}, Lib/player/base/k;->B()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lz4/O;->q:Lz4/P;

    iget-object v0, p1, Lz4/P;->Q0:LE1/t;

    iget-object v1, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v1, Lib/player/base/k;

    iget v0, v0, LE1/t;->q:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    invoke-static {v1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lib/player/base/k;->B()V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://ibsmarterplayer.com/manage/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x10808000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lib/player/base/k;->T()V

    :catch_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
