.class public final synthetic Lorg/apache/hc/core5/pool/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/core5/pool/a;->a:I

    iput-wide p2, p0, Lorg/apache/hc/core5/pool/a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/pool/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lorg/apache/hc/core5/pool/a;->b:J

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/pool/StrictConnPool;->b(JLorg/apache/hc/core5/pool/PoolEntry;)V

    return-void

    :pswitch_0
    iget-wide v0, p0, Lorg/apache/hc/core5/pool/a;->b:J

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/pool/StrictConnPool;->a(JLorg/apache/hc/core5/pool/PoolEntry;)V

    return-void

    :pswitch_1
    iget-wide v0, p0, Lorg/apache/hc/core5/pool/a;->b:J

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/pool/LaxConnPool;->b(JLorg/apache/hc/core5/pool/PoolEntry;)V

    return-void

    :pswitch_2
    iget-wide v0, p0, Lorg/apache/hc/core5/pool/a;->b:J

    check-cast p1, Lorg/apache/hc/core5/pool/PoolEntry;

    invoke-static {v0, v1, p1}, Lorg/apache/hc/core5/pool/LaxConnPool;->a(JLorg/apache/hc/core5/pool/PoolEntry;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
