.class public Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequestFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/HttpRequestFactory<",
        "Lorg/apache/hc/core5/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newHttpRequest(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method
