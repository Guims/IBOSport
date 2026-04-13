.class public final Lm5/r;
.super Ljava/lang/Object;

# interfaces
.implements LV4/h;


# instance fields
.field public final b:Le5/h;

.field public final q:LV4/h;


# direct methods
.method public constructor <init>(LV4/h;Ld5/l;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Le5/h;

    iput-object p2, p0, Lm5/r;->b:Le5/h;

    instance-of p2, p1, Lm5/r;

    if-eqz p2, :cond_0

    check-cast p1, Lm5/r;

    iget-object p1, p1, Lm5/r;->q:LV4/h;

    :cond_0
    iput-object p1, p0, Lm5/r;->q:LV4/h;

    return-void
.end method
