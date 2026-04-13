.class public Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;
.super Lorg/apache/hc/core5/http/message/BasicHttpResponse;

# interfaces
.implements Lorg/apache/hc/core5/http/ClassicHttpResponse;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private entity:Lorg/apache/hc/core5/http/HttpEntity;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/hc/core5/http/ReasonPhraseCatalog;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(ILorg/apache/hc/core5/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    invoke-static {v0}, Lorg/apache/hc/core5/io/Closer;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public getEntity()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicClassicHttpResponse;->entity:Lorg/apache/hc/core5/http/HttpEntity;

    return-void
.end method
