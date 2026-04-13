.class public abstract Lib/player/base/BaseFragment;
.super Landroidx/fragment/app/t;


# instance fields
.field public j0:Lib/player/base/helper/w;

.field public k0:Lib/player/models/WordModels;

.field public l0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/t;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract Q(Landroid/view/KeyEvent;)Z
.end method

.method public abstract R()Z
.end method

.method public abstract S()V
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/t;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    new-instance p1, Lib/player/base/helper/w;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    return-void
.end method
