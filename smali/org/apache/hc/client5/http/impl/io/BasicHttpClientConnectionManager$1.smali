.class Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/io/LeaseRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->lease(Ljava/lang/String;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/LeaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;

.field final synthetic val$route:Lorg/apache/hc/client5/http/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;->this$0:Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/io/ConnectionEndpoint;
    .locals 3

    :try_start_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;->this$0:Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;->val$route:Lorg/apache/hc/client5/http/HttpRoute;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;->getConnection(Lorg/apache/hc/client5/http/HttpRoute;Ljava/lang/Object;)Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager$InternalConnectionEndpoint;-><init>(Lorg/apache/hc/client5/http/impl/io/BasicHttpClientConnectionManager;Lorg/apache/hc/client5/http/HttpRoute;Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
