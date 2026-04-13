.class public final LH3/v;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/v;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/v;->a:LH3/v;

    const-string v0, "rolloutVariant"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/v;->b:LR3/c;

    const-string v0, "parameterKey"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/v;->c:LR3/c;

    const-string v0, "parameterValue"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/v;->d:LR3/c;

    const-string v0, "templateVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/v;->e:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/I0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/f0;

    iget-object v0, p1, LH3/f0;->a:LH3/H0;

    sget-object v1, LH3/v;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/v;->c:LR3/c;

    iget-object v1, p1, LH3/f0;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/v;->d:LR3/c;

    iget-object v1, p1, LH3/f0;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/v;->e:LR3/c;

    iget-wide v1, p1, LH3/f0;->d:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    return-void
.end method
