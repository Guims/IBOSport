.class public final Lg4/M;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/J;


# static fields
.field public static final f:D

.field public static final synthetic g:I


# instance fields
.field public final a:Lv3/e;

.field public final b:LY3/e;

.field public final c:Lk4/h;

.field public final d:Lg4/l;

.field public final e:LV4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sput-wide v0, Lg4/M;->f:D

    return-void
.end method

.method public constructor <init>(Lv3/e;LY3/e;Lk4/h;Lg4/l;LV4/i;)V
    .locals 1

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallations"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionSettings"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventGDTLogger"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p5, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/M;->a:Lv3/e;

    iput-object p2, p0, Lg4/M;->b:LY3/e;

    iput-object p3, p0, Lg4/M;->c:Lk4/h;

    iput-object p4, p0, Lg4/M;->d:Lg4/l;

    iput-object p5, p0, Lg4/M;->e:LV4/i;

    return-void
.end method

.method public static final a(Lg4/M;LX4/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lg4/L;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg4/L;

    iget v1, v0, Lg4/L;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg4/L;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg4/L;

    invoke-direct {v0, p0, p1}, Lg4/L;-><init>(Lg4/M;LX4/c;)V

    :goto_0
    iget-object p1, v0, Lg4/L;->q:Ljava/lang/Object;

    iget v1, v0, Lg4/L;->s:I

    const/4 v2, 0x1

    const-string v3, "SessionFirelogPublisher"

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lg4/L;->b:Lg4/M;

    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LE5/l;->C(Ljava/lang/Object;)V

    const-string p1, "Data Collection is enabled for at least one Subscriber"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lg4/M;->c:Lk4/h;

    iput-object p0, v0, Lg4/L;->b:Lg4/M;

    iput v2, v0, Lg4/L;->s:I

    invoke-virtual {p1, v0}, Lk4/h;->b(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LW4/a;->b:LW4/a;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lg4/M;->c:Lk4/h;

    iget-object v0, p1, Lk4/h;->a:Lk4/m;

    invoke-interface {v0}, Lk4/m;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lk4/h;->b:Lk4/m;

    invoke-interface {p1}, Lk4/m;->a()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    const-string p0, "Sessions SDK disabled. Events will not be sent."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    iget-object p0, p0, Lg4/M;->c:Lk4/h;

    invoke-virtual {p0}, Lk4/h;->a()D

    move-result-wide p0

    sget-wide v0, Lg4/M;->f:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    const-string p0, "Sessions SDK has dropped this session due to sampling."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
