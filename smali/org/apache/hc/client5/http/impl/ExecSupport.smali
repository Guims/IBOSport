.class public final Lorg/apache/hc/client5/http/impl/ExecSupport;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    const-string v1, "ex-"

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/hc/client5/http/impl/ExecSupport;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextExchangeId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/ExecSupport;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;->getNextId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNextExecNumber()J
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/impl/ExecSupport;->INCREMENTING_ID:Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/PrefixedIncrementingId;->getNextNumber()J

    move-result-wide v0

    return-wide v0
.end method
