.class public final synthetic LE3/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LE3/q;

.field public final synthetic r:LM3/c;


# direct methods
.method public synthetic constructor <init>(LE3/q;LM3/c;I)V
    .locals 0

    iput p3, p0, LE3/o;->b:I

    iput-object p1, p0, LE3/o;->q:LE3/q;

    iput-object p2, p0, LE3/o;->r:LM3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LE3/o;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE3/o;->q:LE3/q;

    iget-object v1, p0, LE3/o;->r:LM3/c;

    invoke-virtual {v0, v1}, LE3/q;->a(LM3/c;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LE3/o;->q:LE3/q;

    iget-object v1, p0, LE3/o;->r:LM3/c;

    invoke-virtual {v0, v1}, LE3/q;->a(LM3/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
