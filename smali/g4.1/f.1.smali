.class public final Lg4/f;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Lg4/f;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg4/f;->a:Lg4/f;

    const-string v0, "processName"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/f;->b:LR3/c;

    const-string v0, "pid"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/f;->c:LR3/c;

    const-string v0, "importance"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/f;->d:LR3/c;

    const-string v0, "defaultProcess"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Lg4/f;->e:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg4/z;

    check-cast p2, LR3/e;

    sget-object v0, Lg4/f;->b:LR3/c;

    iget-object v1, p1, Lg4/z;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Lg4/f;->c:LR3/c;

    iget v1, p1, Lg4/z;->b:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, Lg4/f;->d:LR3/c;

    iget v1, p1, Lg4/z;->c:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, Lg4/f;->e:LR3/c;

    iget-boolean p1, p1, Lg4/z;->d:Z

    invoke-interface {p2, v0, p1}, LR3/e;->b(LR3/c;Z)LR3/e;

    return-void
.end method
