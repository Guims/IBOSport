.class public final synthetic Ls0/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ls0/h;


# direct methods
.method public synthetic constructor <init>(Ls0/h;I)V
    .locals 0

    iput p2, p0, Ls0/d;->b:I

    iput-object p1, p0, Ls0/d;->q:Ls0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ls0/d;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls0/d;->q:Ls0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls0/h;->y(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ls0/d;->q:Ls0/h;

    invoke-virtual {v0}, Ls0/h;->z()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
