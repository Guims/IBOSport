.class public final enum Lorg/apache/hc/core5/http/protocol/UriPatternType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/protocol/UriPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/protocol/UriPatternType;

.field public static final enum REGEX:Lorg/apache/hc/core5/http/protocol/UriPatternType;

.field public static final enum URI_PATTERN:Lorg/apache/hc/core5/http/protocol/UriPatternType;

.field public static final enum URI_PATTERN_IN_ORDER:Lorg/apache/hc/core5/http/protocol/UriPatternType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;

    const-string v1, "REGEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/protocol/UriPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;->REGEX:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    new-instance v1, Lorg/apache/hc/core5/http/protocol/UriPatternType;

    const-string v2, "URI_PATTERN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/protocol/UriPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/protocol/UriPatternType;->URI_PATTERN:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    new-instance v2, Lorg/apache/hc/core5/http/protocol/UriPatternType;

    const-string v3, "URI_PATTERN_IN_ORDER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/protocol/UriPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/protocol/UriPatternType;->URI_PATTERN_IN_ORDER:Lorg/apache/hc/core5/http/protocol/UriPatternType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/core5/http/protocol/UriPatternType;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;->$VALUES:[Lorg/apache/hc/core5/http/protocol/UriPatternType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static newMatcher(Lorg/apache/hc/core5/http/protocol/UriPatternType;)Lorg/apache/hc/core5/http/protocol/LookupRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/hc/core5/http/protocol/UriPatternType;",
            ")",
            "Lorg/apache/hc/core5/http/protocol/LookupRegistry<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/protocol/UriPatternType$1;->$SwitchMap$org$apache$hc$core5$http$protocol$UriPatternType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    new-instance p0, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/UriPatternMatcher;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/hc/core5/http/protocol/UriPatternOrderedMatcher;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/UriPatternOrderedMatcher;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/hc/core5/http/protocol/UriRegexMatcher;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/protocol/UriRegexMatcher;-><init>()V

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/protocol/UriPatternType;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/protocol/UriPatternType;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/protocol/UriPatternType;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/protocol/UriPatternType;->$VALUES:[Lorg/apache/hc/core5/http/protocol/UriPatternType;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/protocol/UriPatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/protocol/UriPatternType;

    return-object v0
.end method
