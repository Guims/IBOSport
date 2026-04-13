.class public final synthetic Lorg/apache/hc/client5/http/impl/async/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/async/g;->b:I

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/g;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/async/g;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/g;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/IdleConnectionEvictor;->shutdown()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/g;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->shutdown()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
