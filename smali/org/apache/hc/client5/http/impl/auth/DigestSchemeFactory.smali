.class public Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/AuthScheme;
    .locals 1

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-object p1
.end method
