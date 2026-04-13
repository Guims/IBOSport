.class public Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;
.super Lorg/apache/hc/core5/http/message/BasicHttpRequest;

# interfaces
.implements Lorg/apache/hc/core5/http/ClassicHttpRequest;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private entity:Lorg/apache/hc/core5/http/HttpEntity;


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

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEntity()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-void
.end method
