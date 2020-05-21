.class Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:Z


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1

    .line 736
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 738
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 739
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 740
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 731
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 732
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 733
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 734
    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 758
    nop

    .line 759
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    const/4 v0, 0x0

    .line 762
    :goto_0
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 763
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->padSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 764
    return-void
.end method

.method public getValue()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    return v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 745
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x1

    goto :goto_0

    .line 748
    :cond_0
    move v0, v1

    .line 750
    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 751
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->padSize:I

    if-ge v0, v2, :cond_1

    .line 752
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 754
    :cond_1
    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    .line 772
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidValue value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ValidValue;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
