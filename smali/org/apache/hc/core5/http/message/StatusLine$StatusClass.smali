.class public final enum Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/message/StatusLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field public static final enum CLIENT_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field public static final enum INFORMATIONAL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field public static final enum OTHER:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field public static final enum REDIRECTION:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field public static final enum SERVER_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field public static final enum SUCCESSFUL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    const-string v1, "INFORMATIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->INFORMATIONAL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    new-instance v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    const-string v2, "SUCCESSFUL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->SUCCESSFUL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    new-instance v2, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    const-string v3, "REDIRECTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->REDIRECTION:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    new-instance v3, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    const-string v4, "CLIENT_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->CLIENT_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    new-instance v4, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    const-string v5, "SERVER_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->SERVER_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    new-instance v5, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    const-string v6, "OTHER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->OTHER:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->$VALUES:[Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

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

.method public static from(I)Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;
    .locals 1

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->OTHER:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->SERVER_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->CLIENT_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->REDIRECTION:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->SUCCESSFUL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->INFORMATIONAL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->$VALUES:[Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object v0
.end method
