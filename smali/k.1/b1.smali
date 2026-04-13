.class public final synthetic Lk/b1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lk/c1;


# direct methods
.method public synthetic constructor <init>(Lk/c1;I)V
    .locals 0

    iput p2, p0, Lk/b1;->b:I

    iput-object p1, p0, Lk/b1;->q:Lk/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk/b1;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk/b1;->q:Lk/c1;

    invoke-virtual {v0}, Lk/c1;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lk/b1;->q:Lk/c1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/c1;->c(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
