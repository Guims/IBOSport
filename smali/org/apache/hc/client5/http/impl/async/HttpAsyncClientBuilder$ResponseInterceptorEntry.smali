.class Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseInterceptorEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;
    }
.end annotation


# instance fields
.field final interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

.field final position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;


# direct methods
.method private constructor <init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpResponseInterceptor;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder$ResponseInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpResponseInterceptor;)V

    return-void
.end method
