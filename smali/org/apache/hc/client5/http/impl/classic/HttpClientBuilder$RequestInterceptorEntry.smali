.class Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInterceptorEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;
    }
.end annotation


# instance fields
.field final interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

.field final position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;


# direct methods
.method private constructor <init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;->position:Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;->interceptor:Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry;-><init>(Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder$RequestInterceptorEntry$Position;Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    return-void
.end method
