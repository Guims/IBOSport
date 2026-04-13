.class public final synthetic Lz4/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lz4/t;


# direct methods
.method public synthetic constructor <init>(Lz4/t;I)V
    .locals 0

    iput p2, p0, Lz4/s;->b:I

    iput-object p1, p0, Lz4/s;->q:Lz4/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lz4/s;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lz4/s;->q:Lz4/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lz4/s;->q:Lz4/t;

    iget-object v0, p1, Lz4/t;->I0:LD0/f;

    iget v1, p1, Lz4/t;->H0:I

    iget-object v2, v0, LD0/f;->q:Ljava/lang/Object;

    check-cast v2, LG4/d;

    iget-object v0, v0, LD0/f;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v2, LG4/d;->n0:Lib/player/base/helper/w;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/LanguageModel;

    invoke-virtual {v0}, Lib/player/models/LanguageModel;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lib/player/base/helper/w;->l0(Ljava/lang/String;)V

    iget-object v0, v2, LG4/d;->v0:Lib/player/pages/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v1

    iput-object v1, v0, Lib/player/pages/MainActivity;->h0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->d0()Ljava/util/ArrayList;

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->c0()Lib/player/base/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/BaseFragment;->S()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
