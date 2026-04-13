.class public Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;
.super Lorg/apache/hc/core5/http/message/BasicHttpRequest;

# interfaces
.implements Lorg/apache/hc/client5/http/config/Configurable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/apache/hc/client5/http/config/RequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-object v0
.end method

.method public setConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    return-void
.end method
