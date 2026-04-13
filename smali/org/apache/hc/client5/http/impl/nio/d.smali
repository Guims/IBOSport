.class public final synthetic Lorg/apache/hc/client5/http/impl/nio/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

.field public final synthetic d:Lorg/apache/hc/core5/pool/PoolEntry;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;Ljava/lang/String;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/pool/PoolEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/d;->a:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/nio/d;->c:Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/d;->d:Lorg/apache/hc/core5/pool/PoolEntry;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/d;->d:Lorg/apache/hc/core5/pool/PoolEntry;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/nio/d;->a:Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/nio/d;->c:Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;

    invoke-static {v1, v2, v3, v0, p1}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;->a(Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager$3$1;Ljava/lang/String;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/pool/PoolEntry;Ljava/lang/Boolean;)V

    return-void
.end method
