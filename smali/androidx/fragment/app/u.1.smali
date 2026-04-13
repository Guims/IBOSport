.class public final synthetic Landroidx/fragment/app/u;
.super Ljava/lang/Object;

# interfaces
.implements LI/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf/i;


# direct methods
.method public synthetic constructor <init>(Lf/i;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/u;->a:I

    iput-object p1, p0, Landroidx/fragment/app/u;->b:Lf/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/u;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    iget-object p1, p0, Landroidx/fragment/app/u;->b:Lf/i;

    iget-object p1, p1, Lf/i;->H:LL2/o;

    invoke-virtual {p1}, LL2/o;->w()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p1, p0, Landroidx/fragment/app/u;->b:Lf/i;

    iget-object p1, p1, Lf/i;->H:LL2/o;

    invoke-virtual {p1}, LL2/o;->w()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
