.class public final synthetic LD4/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Lib/player/base/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lib/player/base/BaseFragment;II)V
    .locals 0

    iput p3, p0, LD4/e;->b:I

    iput-object p1, p0, LD4/e;->r:Lib/player/base/BaseFragment;

    iput p2, p0, LD4/e;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget p1, p0, LD4/e;->b:I

    const-string p2, "https://play.google.com/store/apps/details?id=org.videolan.vlc&hl=en_US"

    const-string v0, "https://play.google.com/store/apps/details?id=com.mxtech.videoplayer.ad"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android.intent.action.VIEW"

    iget v5, p0, LD4/e;->q:I

    iget-object v6, p0, LD4/e;->r:Lib/player/base/BaseFragment;

    packed-switch p1, :pswitch_data_0

    check-cast v6, Lib/player/pages/series/h;

    if-eq v5, v2, :cond_1

    if-eq v5, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    :goto_0
    invoke-virtual {v6, v3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    check-cast v6, LD4/x;

    sget-object p1, LD4/x;->D0:Ljava/util/ArrayList;

    if-eq v5, v2, :cond_3

    if-eq v5, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    check-cast v6, LD4/h;

    if-eq v5, v2, :cond_5

    if-eq v5, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
