.class public abstract LG3/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:LL2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LT3/d;

    invoke-direct {v0}, LT3/d;-><init>()V

    sget-object v1, LG3/a;->a:LG3/a;

    const-class v2, LG3/m;

    invoke-virtual {v0, v2, v1}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    const-class v2, LG3/b;

    invoke-virtual {v0, v2, v1}, LT3/d;->a(Ljava/lang/Class;LR3/d;)LS3/a;

    new-instance v1, LL2/o;

    invoke-direct {v1, v0}, LL2/o;-><init>(Ljava/lang/Object;)V

    sput-object v1, LG3/m;->a:LL2/o;

    return-void
.end method

.method public static a(Ljava/lang/String;)LG3/b;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rolloutId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "parameterKey"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "parameterValue"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "variantId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "templateVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v4, p0

    new-instance v1, LG3/b;

    invoke-direct/range {v1 .. v7}, LG3/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method
