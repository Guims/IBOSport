.class public abstract LV1/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:LI1/i;

.field public static final b:LI1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    sget-object v1, LI1/a;->r:LI1/a;

    invoke-static {v1, v0}, LI1/i;->a(Ljava/lang/Object;Ljava/lang/String;)LI1/i;

    move-result-object v0

    sput-object v0, LV1/h;->a:LI1/i;

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, LI1/i;->a(Ljava/lang/Object;Ljava/lang/String;)LI1/i;

    move-result-object v0

    sput-object v0, LV1/h;->b:LI1/i;

    return-void
.end method
