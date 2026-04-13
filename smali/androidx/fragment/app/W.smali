.class public final Landroidx/fragment/app/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/fragment/app/X;

.field public final synthetic r:Landroidx/fragment/app/i;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/i;Landroidx/fragment/app/X;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/W;->b:I

    iput-object p1, p0, Landroidx/fragment/app/W;->r:Landroidx/fragment/app/i;

    iput-object p2, p0, Landroidx/fragment/app/W;->q:Landroidx/fragment/app/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/W;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/W;->r:Landroidx/fragment/app/i;

    iget-object v1, v0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/W;->q:Landroidx/fragment/app/X;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/W;->r:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/W;->q:Landroidx/fragment/app/X;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Landroidx/fragment/app/X;->a:I

    iget-object v1, v1, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v1, v1, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-static {v1, v0}, LB/f;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
