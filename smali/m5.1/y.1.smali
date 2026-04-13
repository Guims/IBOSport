.class public abstract Lm5/y;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Lr5/v;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lm5/x;->y:Lm5/x;

    goto :goto_2

    :cond_1
    sget-object v0, Lm5/C;->a:Lt5/d;

    sget-object v0, Lr5/o;->a:Ln5/c;

    iget-object v1, v0, Ln5/c;->t:Ln5/c;

    if-nez v0, :cond_2

    sget-object v0, Lm5/x;->y:Lm5/x;

    :cond_2
    :goto_2
    return-void
.end method
