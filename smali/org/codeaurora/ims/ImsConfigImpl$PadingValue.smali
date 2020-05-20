.class Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PadingValue"
.end annotation


# instance fields
.field protected padSize:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 p1, 0x0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 108
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 109
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 p1, 0x0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 103
    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;->padSize:I

    .line 104
    return-void
.end method
