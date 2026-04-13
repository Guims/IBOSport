.class public abstract Lm5/s;
.super LV4/a;

# interfaces
.implements LV4/f;


# static fields
.field public static final q:Lm5/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm5/r;

    sget-object v1, LV4/e;->b:LV4/e;

    sget-object v2, Lm5/q;->b:Lm5/q;

    invoke-direct {v0, v1, v2}, Lm5/r;-><init>(LV4/h;Ld5/l;)V

    sput-object v0, Lm5/s;->q:Lm5/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, LV4/e;->b:LV4/e;

    invoke-direct {p0, v0}, LV4/a;-><init>(LV4/h;)V

    return-void
.end method


# virtual methods
.method public final h(LV4/h;)LV4/g;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lm5/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lm5/r;

    iget-object v0, p0, LV4/a;->b:LV4/h;

    if-eq v0, p1, :cond_1

    iget-object v2, p1, Lm5/r;->q:LV4/h;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object p1, p1, Lm5/r;->b:Le5/h;

    invoke-interface {p1, p0}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV4/g;

    if-eqz p1, :cond_3

    return-object p1

    :cond_2
    sget-object v0, LV4/e;->b:LV4/e;

    if-ne v0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final r(LV4/h;)LV4/i;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lm5/r;

    if-eqz v0, :cond_2

    check-cast p1, Lm5/r;

    iget-object v0, p0, LV4/a;->b:LV4/h;

    if-eq v0, p1, :cond_1

    iget-object v1, p1, Lm5/r;->q:LV4/h;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lm5/r;->b:Le5/h;

    invoke-interface {p1, p0}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LV4/g;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    sget-object v0, LV4/e;->b:LV4/e;

    if-ne v0, p1, :cond_3

    :goto_1
    sget-object p1, LV4/j;->b:LV4/j;

    return-object p1

    :cond_3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lm5/w;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract x(LV4/i;Ljava/lang/Runnable;)V
.end method

.method public y()Z
    .locals 1

    instance-of v0, p0, Lm5/j0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
