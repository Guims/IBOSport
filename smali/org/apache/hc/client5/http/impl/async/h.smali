.class public final synthetic Lorg/apache/hc/client5/http/impl/async/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/apache/hc/core5/util/TimeValue;

.field public final synthetic q:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/h;->b:Lorg/apache/hc/core5/util/TimeValue;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/h;->q:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/h;->b:Lorg/apache/hc/core5/util/TimeValue;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/h;->q:Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;

    invoke-static {v0, v1}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder$IdleConnectionEvictor;->a(Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/client5/http/impl/async/InternalH2ConnPool;)V

    return-void
.end method
